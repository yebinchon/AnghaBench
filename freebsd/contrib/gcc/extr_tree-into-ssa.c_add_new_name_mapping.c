
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_8__ {int n_bits; } ;
struct TYPE_7__ {int num_total_mappings; int num_virtual_symbols; int virtual_symbols; int num_virtual_mappings; } ;


 size_t DECL_UID (scalar_t__) ;
 int NAME_SETS_GROWTH_FACTOR ;
 int SET_BIT (TYPE_2__*,int ) ;
 scalar_t__ SSA_NAME_VAR (scalar_t__) ;
 int SSA_NAME_VERSION (scalar_t__) ;
 int TV_TREE_SSA_INCREMENTAL ;
 int add_to_repl_tbl (scalar_t__,scalar_t__) ;
 int bitmap_bit_p (int ,size_t) ;
 int bitmap_ior_into (int ,int ) ;
 int bitmap_set_bit (int ,size_t) ;
 int gcc_assert (int) ;
 int is_gimple_reg (scalar_t__) ;
 scalar_t__ is_new_name (scalar_t__) ;
 int names_replaced_by (scalar_t__) ;
 int need_to_update_vops_p ;
 TYPE_2__* new_ssa_names ;
 int num_ssa_names ;
 TYPE_2__* old_ssa_names ;
 TYPE_2__* sbitmap_resize (TYPE_2__*,unsigned int,int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 TYPE_1__ update_ssa_stats ;

__attribute__((used)) static void
add_new_name_mapping (tree new, tree old)
{
  timevar_push (TV_TREE_SSA_INCREMENTAL);


  gcc_assert (new != old && SSA_NAME_VAR (new) == SSA_NAME_VAR (old));



  if (new_ssa_names->n_bits <= num_ssa_names - 1)
    {
      unsigned int new_sz = num_ssa_names + NAME_SETS_GROWTH_FACTOR;
      new_ssa_names = sbitmap_resize (new_ssa_names, new_sz, 0);
      old_ssa_names = sbitmap_resize (old_ssa_names, new_sz, 0);
    }



  if (!is_gimple_reg (new))
    {
      tree sym;
      size_t uid;

      need_to_update_vops_p = 1;







      sym = SSA_NAME_VAR (new);
      uid = DECL_UID (sym);
      update_ssa_stats.num_virtual_mappings++;
      if (!bitmap_bit_p (update_ssa_stats.virtual_symbols, uid))
 {
   bitmap_set_bit (update_ssa_stats.virtual_symbols, uid);
   update_ssa_stats.num_virtual_symbols++;
 }
    }


  add_to_repl_tbl (new, old);



  if (is_new_name (old))
    bitmap_ior_into (names_replaced_by (new), names_replaced_by (old));



  SET_BIT (new_ssa_names, SSA_NAME_VERSION (new));
  SET_BIT (old_ssa_names, SSA_NAME_VERSION (old));


  update_ssa_stats.num_total_mappings++;

  timevar_pop (TV_TREE_SSA_INCREMENTAL);
}
