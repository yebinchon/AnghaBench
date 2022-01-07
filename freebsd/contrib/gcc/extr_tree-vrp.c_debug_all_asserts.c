
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_all_asserts (int ) ;
 int stderr ;

void
debug_all_asserts (void)
{
  dump_all_asserts (stderr);
}
