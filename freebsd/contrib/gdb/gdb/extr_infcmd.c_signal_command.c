
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef int CORE_ADDR ;


 int ERROR_NO_INFERIOR ;
 int TARGET_SIGNAL_0 ;
 int TARGET_SIGNAL_UNKNOWN ;
 int clear_proceed_status () ;
 int dont_repeat () ;
 int error_no_arg (char*) ;
 int parse_and_eval_long (char*) ;
 int printf_filtered (char*,...) ;
 int proceed (int ,int,int ) ;
 int stop_pc ;
 int target_signal_from_command (int) ;
 int target_signal_from_name (char*) ;
 int target_signal_to_name (int) ;

__attribute__((used)) static void
signal_command (char *signum_exp, int from_tty)
{
  enum target_signal oursig;

  dont_repeat ();
  ERROR_NO_INFERIOR;

  if (!signum_exp)
    error_no_arg ("signal number");




  oursig = target_signal_from_name (signum_exp);

  if (oursig == TARGET_SIGNAL_UNKNOWN)
    {

      int num = parse_and_eval_long (signum_exp);

      if (num == 0)
 oursig = TARGET_SIGNAL_0;
      else
 oursig = target_signal_from_command (num);
    }

  if (from_tty)
    {
      if (oursig == TARGET_SIGNAL_0)
 printf_filtered ("Continuing with no signal.\n");
      else
 printf_filtered ("Continuing with signal %s.\n",
    target_signal_to_name (oursig));
    }

  clear_proceed_status ();




  proceed (oursig == TARGET_SIGNAL_0 ? (CORE_ADDR) -1 : stop_pc, oursig, 0);
}
