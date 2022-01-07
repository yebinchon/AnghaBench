
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ MAX_GCSE_PASSES ;
 scalar_t__ NUM_FIXED_BLOCKS ;
 int _ (char*) ;
 int alloc_gcse_mem () ;
 int alloc_reg_set_mem (int ) ;
 int allocate_reg_info (int ,int ,int ) ;
 int bytes_used ;
 int compute_sets () ;
 scalar_t__ current_function_calls_setjmp ;
 char* current_function_name () ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int end_alias_analysis () ;
 int fprintf (scalar_t__,char*,...) ;
 int free_gcse_mem () ;
 int free_reg_set_mem () ;
 int gcc_obstack_init (int *) ;
 int gcse_obstack ;
 int init_alias_analysis () ;
 scalar_t__ is_too_expensive (int ) ;
 int max_gcse_regno ;
 int max_reg_num () ;
 scalar_t__ n_basic_blocks ;
 int obstack_free (int *,int *) ;
 int one_cprop_pass (scalar_t__,int,int) ;

__attribute__((used)) static int
bypass_jumps (void)
{
  int changed;



  if (current_function_calls_setjmp)
    return 0;



  max_gcse_regno = max_reg_num ();

  if (dump_file)
    dump_flow_info (dump_file, dump_flags);


  if (n_basic_blocks <= NUM_FIXED_BLOCKS + 1
      || is_too_expensive (_ ("jump bypassing disabled")))
    return 0;

  gcc_obstack_init (&gcse_obstack);
  bytes_used = 0;


  init_alias_analysis ();
  alloc_reg_set_mem (max_gcse_regno);
  compute_sets ();

  max_gcse_regno = max_reg_num ();
  alloc_gcse_mem ();
  changed = one_cprop_pass (MAX_GCSE_PASSES + 2, 1, 1);
  free_gcse_mem ();

  if (dump_file)
    {
      fprintf (dump_file, "BYPASS of %s: %d basic blocks, ",
        current_function_name (), n_basic_blocks);
      fprintf (dump_file, "%d bytes\n\n", bytes_used);
    }

  obstack_free (&gcse_obstack, ((void*)0));
  free_reg_set_mem ();


  end_alias_analysis ();
  allocate_reg_info (max_reg_num (), FALSE, FALSE);

  return changed;
}
