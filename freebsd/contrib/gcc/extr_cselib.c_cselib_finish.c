
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cselib_clear_table () ;
 scalar_t__ cselib_hash_table ;
 int cselib_val_pool ;
 int elt_list_pool ;
 int elt_loc_list_pool ;
 int free (scalar_t__) ;
 int free_alloc_pool (int ) ;
 int htab_delete (scalar_t__) ;
 scalar_t__ n_useless_values ;
 scalar_t__ next_unknown_value ;
 scalar_t__ used_regs ;
 int value_pool ;

void
cselib_finish (void)
{
  free_alloc_pool (elt_list_pool);
  free_alloc_pool (elt_loc_list_pool);
  free_alloc_pool (cselib_val_pool);
  free_alloc_pool (value_pool);
  cselib_clear_table ();
  htab_delete (cselib_hash_table);
  free (used_regs);
  used_regs = 0;
  cselib_hash_table = 0;
  n_useless_values = 0;
  next_unknown_value = 0;
}
