
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_function_stdarg ;

__attribute__((used)) static bool
gate_optimize_stdarg (void)
{

  return current_function_stdarg != 0;
}
