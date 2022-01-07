
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_set_t ;
typedef int tree ;


 int get_value_handle (int ) ;
 int insert_into_set (int ,int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;
 int set_contains_value (int ,int ) ;

__attribute__((used)) static void
value_insert_into_set (value_set_t set, tree expr)
{
  tree val = get_value_handle (expr);



  if (is_gimple_min_invariant (val))
    return;

  if (!set_contains_value (set, val))
    insert_into_set (set, expr);
}
