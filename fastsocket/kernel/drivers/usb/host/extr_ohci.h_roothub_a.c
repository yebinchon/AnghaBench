
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ohci_hcd {int dummy; } ;


 int a ;
 int read_roothub (struct ohci_hcd*,int ,int) ;

__attribute__((used)) static inline u32 roothub_a (struct ohci_hcd *hc)
 { return read_roothub (hc, a, 0xfc0fe000); }
