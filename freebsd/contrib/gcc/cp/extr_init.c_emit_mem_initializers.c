
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BINFO_TYPE (scalar_t__) ;
 scalar_t__ BINFO_VIRTUAL_P (scalar_t__) ;
 int COMPLETE_TYPE_P (int ) ;
 scalar_t__ DECL_COPY_CONSTRUCTOR_P (int ) ;
 scalar_t__ FIELD_DECL ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 int OPT_Wextra ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_NEEDS_CONSTRUCTING (int ) ;
 scalar_t__ build_base_path (int ,int ,scalar_t__,int) ;
 int build_indirect_ref (scalar_t__,int *) ;
 int construct_virtual_base (scalar_t__,scalar_t__) ;
 int current_class_ptr ;
 int current_class_type ;
 int current_function_decl ;
 int expand_aggr_init_1 (scalar_t__,scalar_t__,int ,scalar_t__,int ) ;
 int expand_cleanup_for_base (scalar_t__,scalar_t__) ;
 scalar_t__ extra_warnings ;
 int in_base_initializer ;
 int initialize_vtbl_ptrs (int ) ;
 int perform_member_init (scalar_t__,scalar_t__) ;
 scalar_t__ sort_mem_initializers (int ,scalar_t__) ;
 scalar_t__ void_type_node ;
 int warning (int ,char*,int ,int ) ;

void
emit_mem_initializers (tree mem_inits)
{


  if (!COMPLETE_TYPE_P (current_class_type))
    return;



  mem_inits = sort_mem_initializers (current_class_type, mem_inits);

  in_base_initializer = 1;


  while (mem_inits
  && TREE_CODE (TREE_PURPOSE (mem_inits)) != FIELD_DECL)
    {
      tree subobject = TREE_PURPOSE (mem_inits);
      tree arguments = TREE_VALUE (mem_inits);




      if (extra_warnings && !arguments
   && DECL_COPY_CONSTRUCTOR_P (current_function_decl)
   && TYPE_NEEDS_CONSTRUCTING (BINFO_TYPE (subobject)))
 warning (OPT_Wextra, "%Jbase class %q#T should be explicitly initialized in the "
   "copy constructor",
   current_function_decl, BINFO_TYPE (subobject));



      if (arguments == void_type_node)
 arguments = NULL_TREE;


      if (BINFO_VIRTUAL_P (subobject))
 construct_virtual_base (subobject, arguments);
      else
 {
   tree base_addr;

   base_addr = build_base_path (PLUS_EXPR, current_class_ptr,
           subobject, 1);
   expand_aggr_init_1 (subobject, NULL_TREE,
         build_indirect_ref (base_addr, ((void*)0)),
         arguments,
         LOOKUP_NORMAL);
   expand_cleanup_for_base (subobject, NULL_TREE);
 }

      mem_inits = TREE_CHAIN (mem_inits);
    }
  in_base_initializer = 0;


  initialize_vtbl_ptrs (current_class_ptr);


  while (mem_inits)
    {
      perform_member_init (TREE_PURPOSE (mem_inits),
      TREE_VALUE (mem_inits));
      mem_inits = TREE_CHAIN (mem_inits);
    }
}
