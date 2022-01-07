
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int dump_variable (int ,int ) ;
 int stderr ;

void
debug_variable (tree var)
{
  dump_variable (stderr, var);
}
