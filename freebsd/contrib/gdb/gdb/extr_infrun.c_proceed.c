
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ STEP_SKIPS_DELAY (scalar_t__) ;
 scalar_t__ STEP_SKIPS_DELAY_P ;
 size_t TARGET_SIGNAL_0 ;
 int TARGET_SIGNAL_DEFAULT ;
 int annotate_starting () ;
 scalar_t__ bpstat_should_step () ;
 scalar_t__ breakpoint_here_p (scalar_t__) ;
 int breakpoints_inserted ;
 int event_loop_p ;
 int find_pc_function (scalar_t__) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int insert_breakpoints () ;
 int normal_stop () ;
 scalar_t__ prepare_to_proceed () ;
 scalar_t__ prev_pc ;
 scalar_t__ read_pc () ;
 int resume (int,size_t) ;
 int * signal_program ;
 int step_start_function ;
 int stop_after_trap ;
 scalar_t__ stop_pc ;
 size_t stop_signal ;
 int target_can_async_p () ;
 int trap_expected ;
 scalar_t__ trap_expected_after_continue ;
 int wait_for_inferior () ;
 int write_pc (scalar_t__) ;

void
proceed (CORE_ADDR addr, enum target_signal siggnal, int step)
{
  int oneproc = 0;

  if (step > 0)
    step_start_function = find_pc_function (read_pc ());
  if (step < 0)
    stop_after_trap = 1;

  if (addr == (CORE_ADDR) -1)
    {





      if (read_pc () == stop_pc && breakpoint_here_p (read_pc ()))
 oneproc = 1;
      if ((0)
   && breakpoint_here_p (read_pc () + 4)
   && (0))
 oneproc = 1;
    }
  else
    {
      write_pc (addr);
    }
  if (prepare_to_proceed () && breakpoint_here_p (read_pc ()))
    oneproc = 1;
  if (oneproc)


    trap_expected = 1;
  else
    {
      insert_breakpoints ();


      breakpoints_inserted = 1;
    }

  if (siggnal != TARGET_SIGNAL_DEFAULT)
    stop_signal = siggnal;


  else if (!signal_program[stop_signal])
    stop_signal = TARGET_SIGNAL_0;

  annotate_starting ();



  gdb_flush (gdb_stdout);
  prev_pc = read_pc ();


  resume (oneproc || step || bpstat_should_step (), stop_signal);





  if (!event_loop_p || !target_can_async_p ())
    {
      wait_for_inferior ();
      normal_stop ();
    }
}
