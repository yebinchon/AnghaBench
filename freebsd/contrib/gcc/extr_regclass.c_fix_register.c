
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAME_POINTER_REGNUM ;
 int HARD_FRAME_POINTER_REGNUM ;
 int STACK_POINTER_REGNUM ;
 int* call_really_used_regs ;
 int* call_used_regs ;
 int decode_reg_name (char const*) ;
 int error (char*,char const*,char const* const) ;
 int* fixed_regs ;
 int warning (int ,char*,char const*) ;

void
fix_register (const char *name, int fixed, int call_used)
{
  int i;




  if ((i = decode_reg_name (name)) >= 0)
    {
      if ((i == STACK_POINTER_REGNUM



    || i == FRAME_POINTER_REGNUM

    )
   && (fixed == 0 || call_used == 0))
 {
   static const char * const what_option[2][2] = {
     { "call-saved", "call-used" },
     { "no-such-option", "fixed" }};

   error ("can't use '%s' as a %s register", name,
   what_option[fixed][call_used]);
 }
      else
 {
   fixed_regs[i] = fixed;
   call_used_regs[i] = call_used;




 }
    }
  else
    {
      warning (0, "unknown register name: %s", name);
    }
}
