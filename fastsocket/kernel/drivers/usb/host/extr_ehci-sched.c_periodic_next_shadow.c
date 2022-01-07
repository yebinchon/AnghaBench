
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union ehci_shadow {TYPE_4__* sitd; TYPE_3__* itd; TYPE_2__* fstn; TYPE_1__* qh; } ;
struct ehci_hcd {int dummy; } ;
typedef int __hc32 ;
struct TYPE_8__ {union ehci_shadow sitd_next; } ;
struct TYPE_7__ {union ehci_shadow itd_next; } ;
struct TYPE_6__ {union ehci_shadow fstn_next; } ;
struct TYPE_5__ {union ehci_shadow qh_next; } ;





 int hc32_to_cpu (struct ehci_hcd*,int ) ;

__attribute__((used)) static union ehci_shadow *
periodic_next_shadow(struct ehci_hcd *ehci, union ehci_shadow *periodic,
  __hc32 tag)
{
 switch (hc32_to_cpu(ehci, tag)) {
 case 128:
  return &periodic->qh->qh_next;
 case 130:
  return &periodic->fstn->fstn_next;
 case 129:
  return &periodic->itd->itd_next;

 default:
  return &periodic->sitd->sitd_next;
 }
}
