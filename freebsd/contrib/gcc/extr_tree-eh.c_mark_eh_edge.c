
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct eh_region {int dummy; } ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_9__ {char* index; } ;
struct TYPE_8__ {int flags; void* aux; } ;


 int EDGE_EH ;
 TYPE_2__* bb_for_stmt (scalar_t__) ;
 int error (char*,char*,char*) ;
 TYPE_1__* find_edge (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ get_eh_region_tree_label (struct eh_region*) ;
 TYPE_2__* label_to_block (scalar_t__) ;
 int mark_eh_edge_found_error ;

__attribute__((used)) static void
mark_eh_edge (struct eh_region *region, void *data)
{
  tree stmt, lab;
  basic_block src, dst;
  edge e;

  stmt = (tree) data;
  lab = get_eh_region_tree_label (region);

  src = bb_for_stmt (stmt);
  dst = label_to_block (lab);

  e = find_edge (src, dst);
  if (!e)
    {
      error ("EH edge %i->%i is missing", src->index, dst->index);
      mark_eh_edge_found_error = 1;
    }
  else if (!(e->flags & EDGE_EH))
    {
      error ("EH edge %i->%i miss EH flag", src->index, dst->index);
      mark_eh_edge_found_error = 1;
    }
  else if (e->aux)
    {

      error ("EH edge %i->%i has duplicated regions", src->index, dst->index);
      mark_eh_edge_found_error = 1;
    }
  else
    e->aux = (void *)1;
}
