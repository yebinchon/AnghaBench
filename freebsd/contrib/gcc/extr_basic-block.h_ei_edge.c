
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; } ;
typedef TYPE_1__ edge_iterator ;
typedef int edge ;


 int EDGE_I (int ,int ) ;
 int ei_container (TYPE_1__) ;

__attribute__((used)) static inline edge
ei_edge (edge_iterator i)
{
  return EDGE_I (ei_container (i), i.index);
}
