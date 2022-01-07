
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* edge ;
struct TYPE_8__ {scalar_t__ count; int probability; TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_7__ {scalar_t__ index; } ;
struct TYPE_6__ {int frequency; scalar_t__ index; } ;



__attribute__((used)) static bool
better_p (edge e1, edge e2)
{
  if (e1->count != e2->count)
    return e1->count > e2->count;
  if (e1->src->frequency * e1->probability !=
      e2->src->frequency * e2->probability)
    return (e1->src->frequency * e1->probability
     > e2->src->frequency * e2->probability);


  if (e1->src != e2->src)
    return e1->src->index > e2->src->index;
  return e1->dest->index > e2->dest->index;
}
