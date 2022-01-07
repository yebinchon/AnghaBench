
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_var_tracking ;

__attribute__((used)) static bool
gate_handle_var_tracking (void)
{
  return (flag_var_tracking);
}
