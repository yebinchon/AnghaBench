
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int use_operand_p ;
typedef scalar_t__ tree ;


 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int SET_USE (int ,scalar_t__) ;
 scalar_t__ SSA_NAME_VAR (scalar_t__) ;
 scalar_t__ USE_FROM_PTR (int ) ;
 scalar_t__ get_reaching_def (scalar_t__) ;
 scalar_t__ is_old_name (scalar_t__) ;
 scalar_t__ symbol_marked_for_renaming (scalar_t__) ;

__attribute__((used)) static inline void
maybe_replace_use (use_operand_p use_p)
{
  tree rdef = NULL_TREE;
  tree use = USE_FROM_PTR (use_p);
  tree sym = DECL_P (use) ? use : SSA_NAME_VAR (use);

  if (symbol_marked_for_renaming (sym))
    rdef = get_reaching_def (sym);
  else if (is_old_name (use))
    rdef = get_reaching_def (use);

  if (rdef && rdef != use)
    SET_USE (use_p, rdef);
}
