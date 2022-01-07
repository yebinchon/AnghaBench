
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ehci_hcd {int dummy; } ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int dev_attr_companion ;
 int device_create_file (int ,int *) ;
 int ehci_is_TDI (struct ehci_hcd*) ;
 TYPE_2__* ehci_to_hcd (struct ehci_hcd*) ;

__attribute__((used)) static inline void create_companion_file(struct ehci_hcd *ehci)
{
 int i;


 if (!ehci_is_TDI(ehci))
  i = device_create_file(ehci_to_hcd(ehci)->self.controller,
           &dev_attr_companion);
}
