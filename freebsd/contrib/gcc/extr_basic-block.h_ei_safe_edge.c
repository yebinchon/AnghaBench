
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge_iterator ;
typedef int * edge ;


 int * ei_edge (int ) ;
 int ei_end_p (int ) ;

__attribute__((used)) static inline edge
ei_safe_edge (edge_iterator i)
{
  return !ei_end_p (i) ? ei_edge (i) : ((void*)0);
}
