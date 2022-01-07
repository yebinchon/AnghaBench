
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* edge ;
struct TYPE_7__ {TYPE_1__* dest; TYPE_2__* src; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int index; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;

void
flow_edge_list_print (const char *str, const edge *edge_list, int num_edges, FILE *file)
{
  int i;

  if (! edge_list)
    return;

  fprintf (file, "%s { ", str);
  for (i = 0; i < num_edges; i++)
    fprintf (file, "%d->%d ", edge_list[i]->src->index,
      edge_list[i]->dest->index);

  fputs ("}\n", file);
}
