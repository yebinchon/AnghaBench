
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int QUIT ;
 int TARGET_SIGNAL_0 ;
 int TARGET_SIGNAL_DEFAULT ;
 int TARGET_SIGNAL_FIRST ;
 scalar_t__ TARGET_SIGNAL_LAST ;
 int TARGET_SIGNAL_UNKNOWN ;
 int parse_and_eval_long (char*) ;
 int printf_filtered (char*) ;
 int sig_print_header () ;
 int sig_print_info (int) ;
 int target_signal_from_command (int ) ;
 int target_signal_from_name (char*) ;

__attribute__((used)) static void
signals_info (char *signum_exp, int from_tty)
{
  enum target_signal oursig;
  sig_print_header ();

  if (signum_exp)
    {

      oursig = target_signal_from_name (signum_exp);
      if (oursig == TARGET_SIGNAL_UNKNOWN)
 {

   oursig =
     target_signal_from_command (parse_and_eval_long (signum_exp));
 }
      sig_print_info (oursig);
      return;
    }

  printf_filtered ("\n");

  for (oursig = TARGET_SIGNAL_FIRST;
       (int) oursig < (int) TARGET_SIGNAL_LAST;
       oursig = (enum target_signal) ((int) oursig + 1))
    {
      QUIT;

      if (oursig != TARGET_SIGNAL_UNKNOWN
   && oursig != TARGET_SIGNAL_DEFAULT && oursig != TARGET_SIGNAL_0)
 sig_print_info (oursig);
    }

  printf_filtered ("\nUse the \"handle\" command to change these tables.\n");
}
