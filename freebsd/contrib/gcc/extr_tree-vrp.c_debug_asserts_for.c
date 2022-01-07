
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int dump_asserts_for (int ,int ) ;
 int stderr ;

void
debug_asserts_for (tree name)
{
  dump_asserts_for (stderr, name);
}
