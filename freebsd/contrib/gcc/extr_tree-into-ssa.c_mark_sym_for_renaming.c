
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_UID (int ) ;
 int bitmap_set_bit (int ,int ) ;
 int init_update_ssa () ;
 int is_gimple_reg (int ) ;
 scalar_t__ need_to_initialize_update_ssa_p ;
 int need_to_update_vops_p ;
 int syms_to_rename ;

void
mark_sym_for_renaming (tree sym)
{
  if (need_to_initialize_update_ssa_p)
    init_update_ssa ();

  bitmap_set_bit (syms_to_rename, DECL_UID (sym));

  if (!is_gimple_reg (sym))
    need_to_update_vops_p = 1;
}
