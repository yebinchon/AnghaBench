
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1371_quirk {unsigned short vid; scalar_t__ did; scalar_t__ rev; } ;
struct ensoniq {scalar_t__ rev; TYPE_1__* pci; } ;
struct TYPE_2__ {unsigned short vendor; scalar_t__ device; } ;


 scalar_t__ PCI_ANY_ID ;

__attribute__((used)) static int es1371_quirk_lookup(struct ensoniq *ensoniq,
    struct es1371_quirk *list)
{
 while (list->vid != (unsigned short)PCI_ANY_ID) {
  if (ensoniq->pci->vendor == list->vid &&
      ensoniq->pci->device == list->did &&
      ensoniq->rev == list->rev)
   return 1;
  list++;
 }
 return 0;
}
