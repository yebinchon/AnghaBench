
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ n_elems; } ;


 int alloc_code_hoist_mem (int ,scalar_t__) ;
 int alloc_hash_table (int ,TYPE_1__*,int ) ;
 int compute_code_hoist_data () ;
 int compute_hash_table (TYPE_1__*) ;
 scalar_t__ dump_file ;
 int dump_hash_table (scalar_t__,char*,TYPE_1__*) ;
 TYPE_1__ expr_hash_table ;
 int free_code_hoist_mem () ;
 int free_hash_table (TYPE_1__*) ;
 int hoist_code () ;
 int last_basic_block ;
 int max_cuid ;

__attribute__((used)) static int
one_code_hoisting_pass (void)
{
  int changed = 0;

  alloc_hash_table (max_cuid, &expr_hash_table, 0);
  compute_hash_table (&expr_hash_table);
  if (dump_file)
    dump_hash_table (dump_file, "Code Hosting Expressions", &expr_hash_table);

  if (expr_hash_table.n_elems > 0)
    {
      alloc_code_hoist_mem (last_basic_block, expr_hash_table.n_elems);
      compute_code_hoist_data ();
      hoist_code ();
      free_code_hoist_mem ();
    }

  free_hash_table (&expr_hash_table);

  return changed;
}
