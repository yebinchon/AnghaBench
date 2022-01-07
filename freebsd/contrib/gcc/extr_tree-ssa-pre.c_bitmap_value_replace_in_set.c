
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int bitmap_set_t ;


 int bitmap_insert_into_set (int ,int ) ;
 scalar_t__ bitmap_set_contains_value (int ,int ) ;
 int bitmap_set_replace_value (int ,int ,int ) ;
 int get_value_handle (int ) ;

__attribute__((used)) static void
bitmap_value_replace_in_set (bitmap_set_t set, tree expr)
{
  tree val = get_value_handle (expr);
  if (bitmap_set_contains_value (set, val))
    bitmap_set_replace_value (set, val, expr);
  else
    bitmap_insert_into_set (set, expr);
}
