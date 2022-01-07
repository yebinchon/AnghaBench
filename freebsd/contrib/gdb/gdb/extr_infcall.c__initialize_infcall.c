
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_setshow_boolean_cmd (char*,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int class_obscure ;
 int coerce_float_to_double_p ;
 int no_class ;
 int setlist ;
 int showlist ;
 int unwind_on_signal_p ;

void
_initialize_infcall (void)
{
  add_setshow_boolean_cmd ("coerce-float-to-double", class_obscure,
      &coerce_float_to_double_p, "Set coercion of floats to doubles when calling functions\nVariables of type float should generally be converted to doubles before\ncalling an unprototyped function, and left alone when calling a prototyped\nfunction.  However, some older debug info formats do not provide enough\ninformation to determine that a function is prototyped.  If this flag is\nset, GDB will perform the conversion for a function it considers\nunprototyped.\nThe default is to perform the conversion.\n", "Show coercion of floats to doubles when calling functions\nVariables of type float should generally be converted to doubles before\ncalling an unprototyped function, and left alone when calling a prototyped\nfunction.  However, some older debug info formats do not provide enough\ninformation to determine that a function is prototyped.  If this flag is\nset, GDB will perform the conversion for a function it considers\nunprototyped.\nThe default is to perform the conversion.\n",
      ((void*)0), ((void*)0), &setlist, &showlist);

  add_setshow_boolean_cmd ("unwindonsignal", no_class,
      &unwind_on_signal_p, "Set unwinding of stack if a signal is received while in a call dummy.\nThe unwindonsignal lets the user determine what gdb should do if a signal\nis received while in a function called from gdb (call dummy).  If set, gdb\nunwinds the stack and restore the context to what as it was before the call.\nThe default is to stop in the frame where the signal was received.", "Set unwinding of stack if a signal is received while in a call dummy.\nThe unwindonsignal lets the user determine what gdb should do if a signal\nis received while in a function called from gdb (call dummy).  If set, gdb\nunwinds the stack and restore the context to what as it was before the call.\nThe default is to stop in the frame where the signal was received.",
      ((void*)0), ((void*)0), &setlist, &showlist);
}
