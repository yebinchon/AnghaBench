
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_map ;
typedef int tree ;
typedef int bitmap ;


 int NO_PARTITION ;
 int bitmap_set_bit (int ,int) ;
 int var_to_partition (int ,int ) ;

__attribute__((used)) static inline void
set_if_valid (var_map map, bitmap vec, tree var)
{
  int p = var_to_partition (map, var);
  if (p != NO_PARTITION)
    bitmap_set_bit (vec, p);
}
