
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int dummy; } ;
struct ed {int td_list; int hwTailP; int hwHeadP; int hwINFO; } ;


 int ED_IN ;
 int TD_MASK ;
 int hc32_to_cpu (struct ohci_hcd*,int ) ;
 int list_empty (int *) ;

__attribute__((used)) static int check_ed(struct ohci_hcd *ohci, struct ed *ed)
{
 return (hc32_to_cpu(ohci, ed->hwINFO) & ED_IN) != 0
  && (hc32_to_cpu(ohci, ed->hwHeadP) & TD_MASK)
   == (hc32_to_cpu(ohci, ed->hwTailP) & TD_MASK)
  && !list_empty(&ed->td_list);
}
