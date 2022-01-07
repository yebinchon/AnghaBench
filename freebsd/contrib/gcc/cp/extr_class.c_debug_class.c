
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TDF_SLIM ;
 int dump_class_hierarchy_1 (int ,int ,int ) ;
 int stderr ;

void
debug_class (tree t)
{
  dump_class_hierarchy_1 (stderr, TDF_SLIM, t);
}
