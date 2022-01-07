
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int dump_may_aliases_for (int ,int ) ;
 int stderr ;

void
debug_may_aliases_for (tree var)
{
  dump_may_aliases_for (stderr, var);
}
