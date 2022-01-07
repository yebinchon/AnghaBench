
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; } ;
struct plt_entry {int addend; TYPE_2__ plt; int * sec; struct plt_entry* next; } ;
struct TYPE_3__ {struct plt_entry* plist; } ;
struct elf_link_hash_entry {TYPE_1__ plt; } ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 int TRUE ;
 struct plt_entry* bfd_alloc (int *,int) ;

__attribute__((used)) static bfd_boolean
update_plt_info (bfd *abfd, struct elf_link_hash_entry *h,
   asection *sec, bfd_vma addend)
{
  struct plt_entry *ent;

  if (addend < 32768)
    sec = ((void*)0);
  for (ent = h->plt.plist; ent != ((void*)0); ent = ent->next)
    if (ent->sec == sec && ent->addend == addend)
      break;
  if (ent == ((void*)0))
    {
      bfd_size_type amt = sizeof (*ent);
      ent = bfd_alloc (abfd, amt);
      if (ent == ((void*)0))
 return FALSE;
      ent->next = h->plt.plist;
      ent->sec = sec;
      ent->addend = addend;
      ent->plt.refcount = 0;
      h->plt.plist = ent;
    }
  ent->plt.refcount += 1;
  return TRUE;
}
