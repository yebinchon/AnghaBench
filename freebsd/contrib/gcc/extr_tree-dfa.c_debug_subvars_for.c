
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int dump_subvars_for (int ,int ) ;
 int stderr ;

void
debug_subvars_for (tree var)
{
  dump_subvars_for (stderr, var);
}
