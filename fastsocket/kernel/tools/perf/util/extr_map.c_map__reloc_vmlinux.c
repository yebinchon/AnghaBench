
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map {scalar_t__ pgoff; int unmap_ip; int map_ip; } ;
struct kmap {TYPE_1__* ref_reloc_sym; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ unrelocated_addr; } ;


 struct kmap* map__kmap (struct map*) ;
 int map__reloc_map_ip ;
 int map__reloc_unmap_ip ;

void map__reloc_vmlinux(struct map *self)
{
 struct kmap *kmap = map__kmap(self);
 s64 reloc;

 if (!kmap->ref_reloc_sym || !kmap->ref_reloc_sym->unrelocated_addr)
  return;

 reloc = (kmap->ref_reloc_sym->unrelocated_addr -
   kmap->ref_reloc_sym->addr);

 if (!reloc)
  return;

 self->map_ip = map__reloc_map_ip;
 self->unmap_ip = map__reloc_unmap_ip;
 self->pgoff = reloc;
}
