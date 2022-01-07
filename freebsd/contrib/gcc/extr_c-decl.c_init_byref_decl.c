
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int ADDR_EXPR ;
 int BLOCK_ALIGN_MAX ;
 int BLOCK_BYREF_CURRENT_MAX ;
 int BLOCK_FIELD_IS_WEAK ;
 unsigned int BLOCK_HAS_COPY_DISPOSE ;
 scalar_t__ COPYABLE_BYREF_LOCAL_NONPOD (scalar_t__) ;
 int DECL_ALIGN (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_INT_CST_LOW (int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ALIGN (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int TYPE_SIZE_UNIT (scalar_t__) ;
 scalar_t__* block_byref_id_object_copy ;
 scalar_t__* block_byref_id_object_dispose ;
 scalar_t__ build_constructor_from_list (scalar_t__,int ) ;
 scalar_t__ build_fold_addr_expr (scalar_t__) ;
 scalar_t__ build_function_type (int ,scalar_t__) ;
 scalar_t__ build_helper_func_decl (int ,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int ) ;
 scalar_t__ do_digest_init (scalar_t__,scalar_t__) ;
 int error (char*) ;
 int exact_log2 (int) ;
 scalar_t__ fold_convert (scalar_t__,int ) ;
 int get_identifier (char*) ;
 int integer_one_node ;
 int integer_zero_node ;
 int nreverse (scalar_t__) ;
 scalar_t__ ptr_type_node ;
 int sprintf (char*,char*,int) ;
 int synth_block_byref_id_object_copy_func (int,int) ;
 int synth_block_byref_id_object_dispose_func (int,int) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ void_list_node ;
 int void_type_node ;

__attribute__((used)) static tree

init_byref_decl (tree decl, tree init, int flag)
{
  tree initlist;
  tree block_byref_type = TREE_TYPE (decl);
  int size = TREE_INT_CST_LOW (TYPE_SIZE_UNIT (block_byref_type));
  unsigned flags = 0;
  tree fields;

  if (COPYABLE_BYREF_LOCAL_NONPOD (decl))
    flags = BLOCK_HAS_COPY_DISPOSE;

  fields = TYPE_FIELDS (block_byref_type);


  initlist = tree_cons (fields, fold_convert (ptr_type_node, ((flag & BLOCK_FIELD_IS_WEAK) != 0) ? integer_one_node
                 : integer_zero_node), 0);

  fields = TREE_CHAIN (fields);

  initlist = tree_cons (fields,
    build_unary_op (ADDR_EXPR, decl, 0), initlist);

  fields = TREE_CHAIN (fields);

  initlist = tree_cons (fields, build_int_cst (TREE_TYPE (fields), flags),
    initlist);
  fields = TREE_CHAIN (fields);
  initlist = tree_cons (fields, build_int_cst (TREE_TYPE (fields), size),
    initlist);
  fields = TREE_CHAIN (fields);

  if (COPYABLE_BYREF_LOCAL_NONPOD (decl))
    {
      char name[64];
      int align = exact_log2 ((DECL_ALIGN (decl)+TYPE_ALIGN (ptr_type_node)-1) / TYPE_ALIGN (ptr_type_node));
      int kind;
      if (align == -1 || align > BLOCK_ALIGN_MAX) {
 error ("invalid alignment for __block variable");
 kind = 0;
      } else
 kind = align*BLOCK_BYREF_CURRENT_MAX + flag;


      if (!block_byref_id_object_copy[kind])
 {

   tree func_type =
     build_function_type (void_type_node,
     tree_cons (NULL_TREE, ptr_type_node,
         tree_cons (NULL_TREE, ptr_type_node,
             void_list_node)));
   sprintf (name, "__Block_byref_id_object_copy%d", kind);
   block_byref_id_object_copy[kind] = build_helper_func_decl (get_identifier (name),
             func_type);

   synth_block_byref_id_object_copy_func (flag, kind);
 }
      initlist = tree_cons (fields,
       build_fold_addr_expr (block_byref_id_object_copy[kind]),
       initlist);
      fields = TREE_CHAIN (fields);

      if (!block_byref_id_object_dispose[kind])
 {


   tree func_type =
     build_function_type (void_type_node,
     tree_cons (NULL_TREE, ptr_type_node, void_list_node));
   sprintf (name, "__Block_byref_id_object_dispose%d", kind);
   block_byref_id_object_dispose[kind] = build_helper_func_decl (get_identifier (name),
         func_type);

   synth_block_byref_id_object_dispose_func (flag, kind);
 }
      initlist = tree_cons (fields,
       build_fold_addr_expr (block_byref_id_object_dispose[kind]),
       initlist);
      fields = TREE_CHAIN (fields);
    }

  if (init)
    {
      init = do_digest_init (TREE_TYPE (fields), init);
      initlist = tree_cons (fields, init, initlist);
    }
  init = build_constructor_from_list (block_byref_type, nreverse (initlist));
  return init;
}
