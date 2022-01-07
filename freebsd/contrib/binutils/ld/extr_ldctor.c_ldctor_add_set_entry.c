
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct set_info {scalar_t__ reloc; scalar_t__ count; struct set_element* elements; struct bfd_link_hash_entry* h; struct set_info* next; } ;
struct set_element {char const* name; struct set_element* next; int value; TYPE_2__* section; } ;
struct TYPE_4__ {int string; } ;
struct bfd_link_hash_entry {TYPE_1__ root; } ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_reloc_code_real_type ;
struct TYPE_5__ {int * owner; } ;
typedef TYPE_2__ asection ;


 int _ (char*) ;
 int bfd_get_target (int *) ;
 int einfo (int ,int ) ;
 struct set_info* sets ;
 scalar_t__ strcmp (int ,int ) ;
 void* xmalloc (int) ;

void
ldctor_add_set_entry (struct bfd_link_hash_entry *h,
        bfd_reloc_code_real_type reloc,
        const char *name,
        asection *section,
        bfd_vma value)
{
  struct set_info *p;
  struct set_element *e;
  struct set_element **epp;

  for (p = sets; p != ((void*)0); p = p->next)
    if (p->h == h)
      break;

  if (p == ((void*)0))
    {
      p = xmalloc (sizeof (struct set_info));
      p->next = sets;
      sets = p;
      p->h = h;
      p->reloc = reloc;
      p->count = 0;
      p->elements = ((void*)0);
    }
  else
    {
      if (p->reloc != reloc)
 {
   einfo (_("%P%X: Different relocs used in set %s\n"),
   h->root.string);
   return;
 }
      if (p->elements != ((void*)0)
   && section->owner != ((void*)0)
   && p->elements->section->owner != ((void*)0)
   && strcmp (bfd_get_target (section->owner),
       bfd_get_target (p->elements->section->owner)) != 0)
 {
   einfo (_("%P%X: Different object file formats composing set %s\n"),
   h->root.string);
   return;
 }
    }

  e = xmalloc (sizeof (struct set_element));
  e->next = ((void*)0);
  e->name = name;
  e->section = section;
  e->value = value;

  for (epp = &p->elements; *epp != ((void*)0); epp = &(*epp)->next)
    ;
  *epp = e;

  ++p->count;
}
