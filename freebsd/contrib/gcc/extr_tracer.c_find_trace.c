
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_11__ {int index; int frequency; } ;
struct TYPE_10__ {int flags; TYPE_2__* dest; TYPE_2__* src; } ;


 int EDGE_COMPLEX ;
 int EDGE_DFS_BACK ;
 scalar_t__ dump_file ;
 TYPE_1__* find_best_predecessor (TYPE_2__*) ;
 TYPE_1__* find_best_successor (TYPE_2__*) ;
 int fprintf (scalar_t__,char*,...) ;
 scalar_t__ seen (TYPE_2__*) ;

__attribute__((used)) static int
find_trace (basic_block bb, basic_block *trace)
{
  int i = 0;
  edge e;

  if (dump_file)
    fprintf (dump_file, "Trace seed %i [%i]", bb->index, bb->frequency);

  while ((e = find_best_predecessor (bb)) != ((void*)0))
    {
      basic_block bb2 = e->src;
      if (seen (bb2) || (e->flags & (EDGE_DFS_BACK | EDGE_COMPLEX))
   || find_best_successor (bb2) != e)
 break;
      if (dump_file)
 fprintf (dump_file, ",%i [%i]", bb->index, bb->frequency);
      bb = bb2;
    }
  if (dump_file)
    fprintf (dump_file, " forward %i [%i]", bb->index, bb->frequency);
  trace[i++] = bb;


  while ((e = find_best_successor (bb)) != ((void*)0))
    {
      bb = e->dest;
      if (seen (bb) || (e->flags & (EDGE_DFS_BACK | EDGE_COMPLEX))
   || find_best_predecessor (bb) != e)
 break;
      if (dump_file)
 fprintf (dump_file, ",%i [%i]", bb->index, bb->frequency);
      trace[i++] = bb;
    }
  if (dump_file)
    fprintf (dump_file, "\n");
  return i;
}
