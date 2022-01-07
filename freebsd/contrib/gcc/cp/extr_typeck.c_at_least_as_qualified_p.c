
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int cp_type_quals (int ) ;

bool
at_least_as_qualified_p (tree type1, tree type2)
{
  int q1 = cp_type_quals (type1);
  int q2 = cp_type_quals (type2);


  return (q1 & q2) == q2;
}
