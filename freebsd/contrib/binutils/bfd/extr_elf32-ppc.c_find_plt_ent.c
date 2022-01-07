
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plt_entry {int addend; int * sec; struct plt_entry* next; } ;
struct TYPE_2__ {struct plt_entry* plist; } ;
struct elf_link_hash_entry {TYPE_1__ plt; } ;
typedef int bfd_vma ;
typedef int asection ;



__attribute__((used)) static struct plt_entry *
find_plt_ent (struct elf_link_hash_entry *h, asection *sec, bfd_vma addend)
{
  struct plt_entry *ent;

  if (addend < 32768)
    sec = ((void*)0);
  for (ent = h->plt.plist; ent != ((void*)0); ent = ent->next)
    if (ent->sec == sec && ent->addend == addend)
      break;
  return ent;
}
