
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ddg_edge {int dummy; } ;
typedef int dep_type ;
typedef int dep_data_type ;
typedef void* ddg_node_ptr ;
typedef TYPE_2__* ddg_edge_ptr ;
struct TYPE_4__ {scalar_t__ info; } ;
struct TYPE_5__ {int latency; int distance; TYPE_1__ aux; int * next_out; int next_in; int data_type; int type; void* dest; void* src; } ;


 int xmalloc (int) ;

__attribute__((used)) static ddg_edge_ptr
create_ddg_edge (ddg_node_ptr src, ddg_node_ptr dest,
   dep_type t, dep_data_type dt, int l, int d)
{
  ddg_edge_ptr e = (ddg_edge_ptr) xmalloc (sizeof (struct ddg_edge));

  e->src = src;
  e->dest = dest;
  e->type = t;
  e->data_type = dt;
  e->latency = l;
  e->distance = d;
  e->next_in = e->next_out = ((void*)0);
  e->aux.info = 0;
  return e;
}
