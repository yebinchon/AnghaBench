
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td {int node; } ;
struct ed {struct td* td_head; int td_list; } ;


 int list_add_tail (int *,int *) ;

void fhci_add_tds_to_ed(struct ed *ed, struct td **td_list, int number)
{
 int i;

 for (i = 0; i < number; i++) {
  struct td *td = td_list[i];
  list_add_tail(&td->node, &ed->td_list);
 }
 if (ed->td_head == ((void*)0))
  ed->td_head = td_list[0];
}
