
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL_EXIT_CODE ;
 int SIG_DFL ;
 int exit (int ) ;
 int internal_error (char*,int ) ;
 int output_operand_lossage (char*) ;
 int signal (int,int ) ;
 int strsignal (int) ;
 scalar_t__ this_is_asm_operands ;

__attribute__((used)) static void
crash_signal (int signo)
{
  signal (signo, SIG_DFL);



  if (this_is_asm_operands)
    {
      output_operand_lossage ("unrecoverable error");
      exit (FATAL_EXIT_CODE);
    }

  internal_error ("%s", strsignal (signo));
}
