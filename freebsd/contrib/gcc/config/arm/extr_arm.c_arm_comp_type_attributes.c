
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_ATTRIBUTES (int ) ;
 int * lookup_attribute (char*,int ) ;

__attribute__((used)) static int
arm_comp_type_attributes (tree type1, tree type2)
{
  int l1, l2, s1, s2;


  if (TREE_CODE (type1) != FUNCTION_TYPE)
    return 1;


  l1 = lookup_attribute ("long_call", TYPE_ATTRIBUTES (type1)) != ((void*)0);
  l2 = lookup_attribute ("long_call", TYPE_ATTRIBUTES (type2)) != ((void*)0);
  s1 = lookup_attribute ("short_call", TYPE_ATTRIBUTES (type1)) != ((void*)0);
  s2 = lookup_attribute ("short_call", TYPE_ATTRIBUTES (type2)) != ((void*)0);


  if (l1 | l2 | s1 | s2)
    {

      if ((l1 != l2) || (s1 != s2))
 return 0;


      if ((l1 & s2) || (l2 & s1))
 return 0;
    }


  l1 = lookup_attribute ("isr", TYPE_ATTRIBUTES (type1)) != ((void*)0);
  if (! l1)
    l1 = lookup_attribute ("interrupt", TYPE_ATTRIBUTES (type1)) != ((void*)0);
  l2 = lookup_attribute ("isr", TYPE_ATTRIBUTES (type2)) != ((void*)0);
  if (! l2)
    l1 = lookup_attribute ("interrupt", TYPE_ATTRIBUTES (type2)) != ((void*)0);
  if (l1 != l2)
    return 0;

  return 1;
}
