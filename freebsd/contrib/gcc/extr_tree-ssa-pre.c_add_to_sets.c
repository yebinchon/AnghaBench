
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ bitmap_set_t ;


 int bitmap_insert_into_set (scalar_t__,scalar_t__) ;
 int bitmap_value_insert_into_set (scalar_t__,scalar_t__) ;
 int vn_add (scalar_t__,scalar_t__) ;
 scalar_t__ vn_lookup_or_add (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
add_to_sets (tree var, tree expr, tree stmt, bitmap_set_t s1,
      bitmap_set_t s2)
{
  tree val = vn_lookup_or_add (expr, stmt);





  if (var != expr)
    vn_add (var, val);

  if (s1)
    bitmap_insert_into_set (s1, var);
  bitmap_value_insert_into_set (s2, var);
}
