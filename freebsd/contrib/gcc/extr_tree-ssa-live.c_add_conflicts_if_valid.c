
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_map ;
typedef int tree ;
typedef int tpa_p ;
typedef int conflict_graph ;
typedef int bitmap ;


 int NO_PARTITION ;
 int TPA_NONE ;
 scalar_t__ bitmap_bit_p (int ,int) ;
 int bitmap_clear_bit (int ,int) ;
 int conflict_graph_add (int ,int,int) ;
 int tpa_find_tree (int ,int) ;
 int tpa_first_partition (int ,int) ;
 int tpa_next_partition (int ,int) ;
 int var_to_partition (int ,int ) ;

__attribute__((used)) static inline void
add_conflicts_if_valid (tpa_p tpa, conflict_graph graph,
   var_map map, bitmap vec, tree var)
{
  int p, y, first;
  p = var_to_partition (map, var);
  if (p != NO_PARTITION)
    {
      bitmap_clear_bit (vec, p);
      first = tpa_find_tree (tpa, p);

      if (first == TPA_NONE)
        return;

      for (y = tpa_first_partition (tpa, first);
    y != TPA_NONE;
    y = tpa_next_partition (tpa, y))
 {
   if (bitmap_bit_p (vec, y))
     conflict_graph_add (graph, p, y);
 }
    }
}
