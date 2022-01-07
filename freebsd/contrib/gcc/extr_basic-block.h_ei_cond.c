
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge_iterator ;
typedef int * edge ;


 int * ei_edge (int ) ;
 int ei_end_p (int ) ;

__attribute__((used)) static inline bool
ei_cond (edge_iterator ei, edge *p)
{
  if (!ei_end_p (ei))
    {
      *p = ei_edge (ei);
      return 1;
    }
  else
    {
      *p = ((void*)0);
      return 0;
    }
}
