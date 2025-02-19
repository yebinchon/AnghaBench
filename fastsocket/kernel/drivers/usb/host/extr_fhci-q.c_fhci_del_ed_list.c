
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {scalar_t__ state; scalar_t__ tds_cnt; scalar_t__ num_of_tds; } ;
struct urb {struct urb_priv* hcpriv; } ;
struct td {scalar_t__ status; struct urb* urb; } ;
struct fhci_hcd {int dummy; } ;
struct ed {int dummy; } ;


 scalar_t__ URB_DEL ;
 scalar_t__ USB_TD_INPROGRESS ;
 int fhci_done_td (struct urb*,struct td*) ;
 struct td* fhci_remove_td_from_ed (struct ed*) ;
 int fhci_urb_complete_free (struct fhci_hcd*,struct urb*) ;
 struct td* peek_td_from_ed (struct ed*) ;

void fhci_del_ed_list(struct fhci_hcd *fhci, struct ed *ed)
{
 struct td *td = peek_td_from_ed(ed);
 struct urb *urb = td->urb;
 struct urb_priv *urb_priv = urb->hcpriv;

 if (urb_priv->state == URB_DEL) {
  td = fhci_remove_td_from_ed(ed);

  if (td->status != USB_TD_INPROGRESS)
   fhci_done_td(urb, td);


  if (++(urb_priv->tds_cnt) == urb_priv->num_of_tds)
   fhci_urb_complete_free(fhci, urb);
 }
}
