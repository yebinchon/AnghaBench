
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ interp_quiet_p (int *) ;

__attribute__((used)) static int
cli_interpreter_display_prompt_p (void *data)
{
  if (interp_quiet_p (((void*)0)))
    return 0;
  else
    return 1;
}
