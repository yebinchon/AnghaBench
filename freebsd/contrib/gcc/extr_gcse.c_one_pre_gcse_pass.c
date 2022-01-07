
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ n_elems; } ;


 int add_noreturn_fake_exit_edges () ;
 int alloc_hash_table (int ,TYPE_1__*,int ) ;
 int alloc_pre_mem (int ,scalar_t__) ;
 int bytes_used ;
 int compute_hash_table (TYPE_1__*) ;
 int compute_ld_motion_mems () ;
 int compute_pre_data () ;
 char* current_function_name () ;
 scalar_t__ dump_file ;
 int dump_hash_table (scalar_t__,char*,TYPE_1__*) ;
 int edge_list ;
 TYPE_1__ expr_hash_table ;
 scalar_t__ flag_gcse_lm ;
 int fprintf (scalar_t__,char*,...) ;
 int free_edge_list (int ) ;
 int free_hash_table (TYPE_1__*) ;
 int free_ldst_mems () ;
 int free_pre_mem () ;
 int gcse_create_count ;
 int gcse_subst_count ;
 int last_basic_block ;
 int max_cuid ;
 int pre_gcse () ;
 int remove_fake_exit_edges () ;
 int trim_ld_motion_mems () ;

__attribute__((used)) static int
one_pre_gcse_pass (int pass)
{
  int changed = 0;

  gcse_subst_count = 0;
  gcse_create_count = 0;

  alloc_hash_table (max_cuid, &expr_hash_table, 0);
  add_noreturn_fake_exit_edges ();
  if (flag_gcse_lm)
    compute_ld_motion_mems ();

  compute_hash_table (&expr_hash_table);
  trim_ld_motion_mems ();
  if (dump_file)
    dump_hash_table (dump_file, "Expression", &expr_hash_table);

  if (expr_hash_table.n_elems > 0)
    {
      alloc_pre_mem (last_basic_block, expr_hash_table.n_elems);
      compute_pre_data ();
      changed |= pre_gcse ();
      free_edge_list (edge_list);
      free_pre_mem ();
    }

  free_ldst_mems ();
  remove_fake_exit_edges ();
  free_hash_table (&expr_hash_table);

  if (dump_file)
    {
      fprintf (dump_file, "\nPRE GCSE of %s, pass %d: %d bytes needed, ",
        current_function_name (), pass, bytes_used);
      fprintf (dump_file, "%d substs, %d insns created\n",
        gcse_subst_count, gcse_create_count);
    }

  return changed;
}
