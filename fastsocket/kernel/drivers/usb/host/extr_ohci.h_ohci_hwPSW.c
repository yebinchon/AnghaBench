
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct td {int dummy; } ;
struct ohci_hcd {int dummy; } ;


 int hc16_to_cpup (struct ohci_hcd const*,int ) ;
 int ohci_hwPSWp (struct ohci_hcd const*,struct td const*,int) ;

__attribute__((used)) static inline u16 ohci_hwPSW(const struct ohci_hcd *ohci,
                               const struct td *td, int index)
{
 return hc16_to_cpup(ohci, ohci_hwPSWp(ohci, td, index));
}
