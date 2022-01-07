
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct redirection_data {TYPE_2__* outgoing_edge; } ;
typedef int hashval_t ;
typedef TYPE_2__* edge ;
struct TYPE_4__ {TYPE_1__* dest; } ;
struct TYPE_3__ {int index; } ;



__attribute__((used)) static hashval_t
redirection_data_hash (const void *p)
{
  edge e = ((struct redirection_data *)p)->outgoing_edge;
  return e->dest->index;
}
