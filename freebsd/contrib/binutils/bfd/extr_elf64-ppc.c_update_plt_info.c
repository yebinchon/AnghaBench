
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* string; } ;
struct TYPE_9__ {TYPE_3__ root; } ;
struct TYPE_6__ {struct plt_entry* plist; } ;
struct TYPE_10__ {int needs_plt; TYPE_4__ root; TYPE_1__ plt; } ;
struct ppc_link_hash_entry {int is_func; TYPE_5__ elf; } ;
struct TYPE_7__ {scalar_t__ refcount; } ;
struct plt_entry {scalar_t__ addend; TYPE_2__ plt; struct plt_entry* next; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 struct plt_entry* bfd_alloc (int *,int) ;

__attribute__((used)) static bfd_boolean
update_plt_info (bfd *abfd, struct ppc_link_hash_entry *eh, bfd_vma addend)
{
  struct plt_entry *ent;

  for (ent = eh->elf.plt.plist; ent != ((void*)0); ent = ent->next)
    if (ent->addend == addend)
      break;
  if (ent == ((void*)0))
    {
      bfd_size_type amt = sizeof (*ent);
      ent = bfd_alloc (abfd, amt);
      if (ent == ((void*)0))
 return FALSE;
      ent->next = eh->elf.plt.plist;
      ent->addend = addend;
      ent->plt.refcount = 0;
      eh->elf.plt.plist = ent;
    }
  ent->plt.refcount += 1;
  eh->elf.needs_plt = 1;
  if (eh->elf.root.root.string[0] == '.'
      && eh->elf.root.root.string[1] != '\0')
    eh->is_func = 1;
  return TRUE;
}
