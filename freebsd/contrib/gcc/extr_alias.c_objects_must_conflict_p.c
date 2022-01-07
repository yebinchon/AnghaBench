
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int HOST_WIDE_INT ;


 scalar_t__ TYPE_VOLATILE (scalar_t__) ;
 int get_alias_set (scalar_t__) ;

int
objects_must_conflict_p (tree t1, tree t2)
{
  HOST_WIDE_INT set1, set2;




  if (t1 == 0 && t2 == 0)
    return 0;


  if (t1 == t2

      || (t1 != 0 && TYPE_VOLATILE (t1) && t2 != 0 && TYPE_VOLATILE (t2)))
    return 1;

  set1 = t1 ? get_alias_set (t1) : 0;
  set2 = t2 ? get_alias_set (t2) : 0;






  return set1 == 0 || set2 == 0 || set1 == set2;
}
