
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HOST_WIDE_INT ;


 scalar_t__ VOID_TYPE_P (int ) ;
 int alias_sets_conflict_p (int ,int ) ;
 int get_alias_set (int ) ;

__attribute__((used)) static bool
nonstandard_alias_types_p (tree type1, tree type2)
{
  HOST_WIDE_INT set1;
  HOST_WIDE_INT set2;

  if (VOID_TYPE_P (type1) || VOID_TYPE_P (type2))
    return 0;

  set1 = get_alias_set (type1);
  set2 = get_alias_set (type2);
  return !alias_sets_conflict_p (set1, set2);
}
