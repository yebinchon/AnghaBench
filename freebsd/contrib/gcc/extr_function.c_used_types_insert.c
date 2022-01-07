
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ DINFO_LEVEL_NONE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int cfun ;
 scalar_t__ debug_info_level ;
 int used_types_insert_helper (int ,int ) ;

void
used_types_insert (tree t)
{
  while (POINTER_TYPE_P (t) || TREE_CODE (t) == ARRAY_TYPE)
    t = TREE_TYPE (t);
  t = TYPE_MAIN_VARIANT (t);
  if (debug_info_level > DINFO_LEVEL_NONE)
    used_types_insert_helper (t, cfun);
}
