
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* var_ann_t ;
typedef int tree ;
struct ptr_info_def {scalar_t__ name_mem_tag; scalar_t__ value_escapes_p; int * pt_vars; scalar_t__ is_dereferenced; } ;
struct TYPE_3__ {int symbol_mem_tag; } ;


 int POINTER_TYPE_P (int ) ;
 scalar_t__ RESULT_DECL ;
 struct ptr_info_def* SSA_NAME_PTR_INFO (int ) ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VISITED (int ) ;
 scalar_t__ bitmap_empty_p (int *) ;
 int debug_variable (int ) ;
 int error (char*) ;
 int internal_error (char*) ;
 int is_call_clobbered (scalar_t__) ;
 scalar_t__ is_gimple_reg (int ) ;
 size_t num_ssa_names ;
 int ssa_name (size_t) ;
 TYPE_1__* var_ann (int ) ;

__attribute__((used)) static void
verify_flow_sensitive_alias_info (void)
{
  size_t i;
  tree ptr;

  for (i = 1; i < num_ssa_names; i++)
    {
      tree var;
      var_ann_t ann;
      struct ptr_info_def *pi;


      ptr = ssa_name (i);
      if (!ptr)
 continue;



      if (!POINTER_TYPE_P (TREE_TYPE (ptr)) || !TREE_VISITED (ptr))
 continue;





      var = SSA_NAME_VAR (ptr);
      if (TREE_CODE (var) == RESULT_DECL
   && is_gimple_reg (ptr))
 continue;

      pi = SSA_NAME_PTR_INFO (ptr);
      if (pi == ((void*)0))
 continue;

      ann = var_ann (var);
      if (pi->is_dereferenced && !pi->name_mem_tag && !ann->symbol_mem_tag)
 {
   error ("dereferenced pointers should have a name or a symbol tag");
   goto err;
 }

      if (pi->name_mem_tag
   && (pi->pt_vars == ((void*)0) || bitmap_empty_p (pi->pt_vars)))
 {
   error ("pointers with a memory tag, should have points-to sets");
   goto err;
 }

      if (pi->value_escapes_p
   && pi->name_mem_tag
   && !is_call_clobbered (pi->name_mem_tag))
 {
   error ("pointer escapes but its name tag is not call-clobbered");
   goto err;
 }
    }

  return;

err:
  debug_variable (ptr);
  internal_error ("verify_flow_sensitive_alias_info failed");
}
