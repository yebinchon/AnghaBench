
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_list {int dummy; } ;


 int NUM_EDGES (struct edge_list*) ;
 int find_control_dependence (struct edge_list*,int) ;

__attribute__((used)) static void
find_all_control_dependences (struct edge_list *el)
{
  int i;

  for (i = 0; i < NUM_EDGES (el); ++i)
    find_control_dependence (el, i);
}
