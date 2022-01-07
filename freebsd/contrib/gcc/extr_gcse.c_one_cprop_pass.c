
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ n_elems; } ;


 int * XCNEWVEC (int ,int ) ;
 int alloc_cprop_mem (int ,scalar_t__) ;
 int alloc_hash_table (int ,TYPE_1__*,int) ;
 int bypass_conditional_jumps () ;
 int bytes_used ;
 int compute_cprop_data () ;
 int compute_hash_table (TYPE_1__*) ;
 int cprop (int) ;
 char* current_function_name () ;
 int delete_unreachable_blocks () ;
 scalar_t__ dump_file ;
 int dump_hash_table (scalar_t__,char*,TYPE_1__*) ;
 int find_implicit_sets () ;
 int fprintf (scalar_t__,char*,...) ;
 int free (int *) ;
 int free_cprop_mem () ;
 int free_hash_table (TYPE_1__*) ;
 int global_const_prop_count ;
 int global_copy_prop_count ;
 int * implicit_sets ;
 int last_basic_block ;
 int local_const_prop_count ;
 int local_copy_prop_count ;
 int local_cprop_pass (int) ;
 int max_cuid ;
 int rtx ;
 TYPE_1__ set_hash_table ;

__attribute__((used)) static int
one_cprop_pass (int pass, bool cprop_jumps, bool bypass_jumps)
{
  int changed = 0;

  global_const_prop_count = local_const_prop_count = 0;
  global_copy_prop_count = local_copy_prop_count = 0;

  local_cprop_pass (cprop_jumps);


  implicit_sets = XCNEWVEC (rtx, last_basic_block);
  find_implicit_sets ();

  alloc_hash_table (max_cuid, &set_hash_table, 1);
  compute_hash_table (&set_hash_table);


  free (implicit_sets);
  implicit_sets = ((void*)0);

  if (dump_file)
    dump_hash_table (dump_file, "SET", &set_hash_table);
  if (set_hash_table.n_elems > 0)
    {
      alloc_cprop_mem (last_basic_block, set_hash_table.n_elems);
      compute_cprop_data ();
      changed = cprop (cprop_jumps);
      if (bypass_jumps)
 changed |= bypass_conditional_jumps ();
      free_cprop_mem ();
    }

  free_hash_table (&set_hash_table);

  if (dump_file)
    {
      fprintf (dump_file, "CPROP of %s, pass %d: %d bytes needed, ",
        current_function_name (), pass, bytes_used);
      fprintf (dump_file, "%d local const props, %d local copy props, ",
        local_const_prop_count, local_copy_prop_count);
      fprintf (dump_file, "%d global const props, %d global copy props\n\n",
        global_const_prop_count, global_copy_prop_count);
    }

  if (changed && cprop_jumps)
    delete_unreachable_blocks ();

  return changed;
}
