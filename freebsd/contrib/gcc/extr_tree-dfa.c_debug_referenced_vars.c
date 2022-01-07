
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_referenced_vars (int ) ;
 int stderr ;

void
debug_referenced_vars (void)
{
  dump_referenced_vars (stderr);
}
