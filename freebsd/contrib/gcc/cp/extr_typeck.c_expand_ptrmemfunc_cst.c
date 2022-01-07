
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_OFFSET (int ) ;
 int DECL_CONTEXT (int ) ;
 int DECL_VINDEX (int ) ;
 int DECL_VIRTUAL_P (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int LSHIFT_EXPR ;
 int MULT_EXPR ;
 int PLUS_EXPR ;
 int PTRMEM_CST_MEMBER (int ) ;
 int TARGET_PTRMEMFUNC_VBIT_LOCATION ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_OBJECT_TYPE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int binfo_or_else (int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build_addr_func (int ) ;
 int build_nop (int ,int ) ;
 int convert (int ,int ) ;
 int fold_if_not_in_template (int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_delta_difference (int ,int ,int ,int ) ;
 int integer_one_node ;
 int integer_type_node ;


 int vtable_entry_type ;

void
expand_ptrmemfunc_cst (tree cst, tree *delta, tree *pfn)
{
  tree type = TREE_TYPE (cst);
  tree fn = PTRMEM_CST_MEMBER (cst);
  tree ptr_class, fn_class;

  gcc_assert (TREE_CODE (fn) == FUNCTION_DECL);


  fn_class = DECL_CONTEXT (fn);


  ptr_class = TYPE_PTRMEMFUNC_OBJECT_TYPE (type);


  *delta = get_delta_difference (fn_class, ptr_class, 0,
                  0);

  if (!DECL_VIRTUAL_P (fn))
    *pfn = convert (TYPE_PTRMEMFUNC_FN_TYPE (type), build_addr_func (fn));
  else
    {



      tree orig_class = DECL_CONTEXT (fn);
      tree binfo = binfo_or_else (orig_class, fn_class);
      *delta = build2 (PLUS_EXPR, TREE_TYPE (*delta),
         *delta, BINFO_OFFSET (binfo));
      *delta = fold_if_not_in_template (*delta);




      *pfn = DECL_VINDEX (fn);
      *pfn = build2 (MULT_EXPR, integer_type_node, *pfn,
       TYPE_SIZE_UNIT (vtable_entry_type));
      *pfn = fold_if_not_in_template (*pfn);

      switch (TARGET_PTRMEMFUNC_VBIT_LOCATION)
 {
 case 128:
   *pfn = build2 (PLUS_EXPR, integer_type_node, *pfn,
    integer_one_node);
   *pfn = fold_if_not_in_template (*pfn);
   break;

 case 129:
   *delta = build2 (LSHIFT_EXPR, TREE_TYPE (*delta),
      *delta, integer_one_node);
   *delta = fold_if_not_in_template (*delta);
   *delta = build2 (PLUS_EXPR, TREE_TYPE (*delta),
      *delta, integer_one_node);
   *delta = fold_if_not_in_template (*delta);
   break;

 default:
   gcc_unreachable ();
 }

      *pfn = build_nop (TYPE_PTRMEMFUNC_FN_TYPE (type), *pfn);
      *pfn = fold_if_not_in_template (*pfn);
    }
}
