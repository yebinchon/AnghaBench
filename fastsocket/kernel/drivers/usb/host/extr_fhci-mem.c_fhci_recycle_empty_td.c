
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td {int node; } ;
struct fhci_hcd {int empty_tds; } ;


 int init_td (struct td*) ;
 int list_add (int *,int *) ;

void fhci_recycle_empty_td(struct fhci_hcd *fhci, struct td *td)
{
 init_td(td);
 list_add(&td->node, &fhci->empty_tds);
}
