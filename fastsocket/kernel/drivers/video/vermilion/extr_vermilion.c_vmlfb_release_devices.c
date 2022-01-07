
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_par {int vdc; int gpu; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int pci_disable_device (int ) ;
 int pci_set_drvdata (int ,int *) ;

__attribute__((used)) static void vmlfb_release_devices(struct vml_par *par)
{
 if (atomic_dec_and_test(&par->refcount)) {
  pci_set_drvdata(par->vdc, ((void*)0));
  pci_disable_device(par->gpu);
  pci_disable_device(par->vdc);
 }
}
