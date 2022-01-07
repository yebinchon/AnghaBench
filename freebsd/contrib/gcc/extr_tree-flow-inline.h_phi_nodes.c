
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int phi_nodes; } ;



__attribute__((used)) static inline tree
phi_nodes (basic_block bb)
{
  return bb->phi_nodes;
}
