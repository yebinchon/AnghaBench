
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
struct TYPE_5__ {struct TYPE_5__* next; int expr; } ;
struct TYPE_4__ {TYPE_2__* head; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int get_value_handle (int ) ;
 int print_generic_expr (int *,int ,int ) ;

__attribute__((used)) static void
print_value_set (FILE *outfile, value_set_t set,
   const char *setname, int blockindex)
{
  value_set_node_t node;
  fprintf (outfile, "%s[%d] := { ", setname, blockindex);
  if (set)
    {
      for (node = set->head;
    node;
    node = node->next)
 {
   print_generic_expr (outfile, node->expr, 0);

   fprintf (outfile, " (");
   print_generic_expr (outfile, get_value_handle (node->expr), 0);
   fprintf (outfile, ") ");

   if (node->next)
     fprintf (outfile, ", ");
 }
    }

  fprintf (outfile, " }\n");
}
