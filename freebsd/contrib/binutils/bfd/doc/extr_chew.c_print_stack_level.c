
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 int isp ;
 int istack ;
 int pc ;
 int stack ;
 int stderr ;
 int tos ;

__attribute__((used)) static void
print_stack_level ()
{
  fprintf (stderr, "current string stack depth = %d, ", tos - stack);
  fprintf (stderr, "current integer stack depth = %d\n", isp - istack);
  pc++;
}
