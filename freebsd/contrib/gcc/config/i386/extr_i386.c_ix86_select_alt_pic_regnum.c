
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int INVALID_REGNUM ;
 scalar_t__ current_function_is_leaf ;
 int current_function_profile ;
 int ix86_current_function_calls_tls_descriptor ;
 int * regs_ever_live ;

__attribute__((used)) static unsigned int
ix86_select_alt_pic_regnum (void)
{
  if (current_function_is_leaf && !current_function_profile
      && !ix86_current_function_calls_tls_descriptor)
    {
      int i;
      for (i = 2; i >= 0; --i)
        if (!regs_ever_live[i])
   return i;
    }

  return INVALID_REGNUM;
}
