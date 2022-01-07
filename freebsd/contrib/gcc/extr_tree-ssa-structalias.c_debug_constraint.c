
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int constraint_t ;


 int dump_constraint (int ,int ) ;
 int stderr ;

void
debug_constraint (constraint_t c)
{
  dump_constraint (stderr, c);
}
