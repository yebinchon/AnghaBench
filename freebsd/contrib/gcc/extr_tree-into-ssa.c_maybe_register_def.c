
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int def_operand_p ;


 scalar_t__ DECL_P (int ) ;
 int DEF_FROM_PTR (int ) ;
 int SET_DEF (int ,int ) ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ is_new_name (int ) ;
 scalar_t__ is_old_name (int ) ;
 int make_ssa_name (int ,int ) ;
 int names_replaced_by (int ) ;
 int register_new_update_set (int ,int ) ;
 int register_new_update_single (int ,int ) ;
 scalar_t__ symbol_marked_for_renaming (int ) ;

__attribute__((used)) static inline void
maybe_register_def (def_operand_p def_p, tree stmt)
{
  tree def = DEF_FROM_PTR (def_p);
  tree sym = DECL_P (def) ? def : SSA_NAME_VAR (def);



  if (symbol_marked_for_renaming (sym))
    {
      if (DECL_P (def))
 {
   def = make_ssa_name (def, stmt);
   SET_DEF (def_p, def);
 }

      register_new_update_single (def, sym);
    }
  else
    {


      if (is_new_name (def))
 register_new_update_set (def, names_replaced_by (def));



      if (is_old_name (def))
 register_new_update_single (def, def);
    }
}
