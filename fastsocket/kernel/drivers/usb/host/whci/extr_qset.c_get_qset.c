
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc_qset {TYPE_1__* ep; } ;
struct whc {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct whc_qset* hcpriv; } ;


 struct whc_qset* qset_alloc (struct whc*,int ) ;
 int qset_fill_qh (struct whc_qset*,struct urb*) ;

struct whc_qset *get_qset(struct whc *whc, struct urb *urb,
     gfp_t mem_flags)
{
 struct whc_qset *qset;

 qset = urb->ep->hcpriv;
 if (qset == ((void*)0)) {
  qset = qset_alloc(whc, mem_flags);
  if (qset == ((void*)0))
   return ((void*)0);

  qset->ep = urb->ep;
  urb->ep->hcpriv = qset;
  qset_fill_qh(qset, urb);
 }
 return qset;
}
