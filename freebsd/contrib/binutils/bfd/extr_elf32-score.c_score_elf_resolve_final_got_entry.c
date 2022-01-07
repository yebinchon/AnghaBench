
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {struct score_elf_link_hash_entry* h; } ;
struct score_got_entry {int symndx; TYPE_5__ d; int * abfd; } ;
struct TYPE_6__ {scalar_t__ link; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_9__ {TYPE_3__ root; } ;
struct score_elf_link_hash_entry {TYPE_4__ root; } ;
typedef int * htab_t ;


 int INSERT ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int htab_clear_slot (int *,void**) ;
 int htab_find (int *,struct score_got_entry*) ;
 void** htab_find_slot (int *,struct score_got_entry*,int ) ;

__attribute__((used)) static int
score_elf_resolve_final_got_entry (void **entryp, void *p)
{
  struct score_got_entry *entry = (struct score_got_entry *)*entryp;
  htab_t got_entries = *(htab_t *)p;

  if (entry->abfd != ((void*)0) && entry->symndx == -1)
    {
      struct score_elf_link_hash_entry *h = entry->d.h;

      while (h->root.root.type == bfd_link_hash_indirect
      || h->root.root.type == bfd_link_hash_warning)
 h = (struct score_elf_link_hash_entry *) h->root.root.u.i.link;

      if (entry->d.h == h)
 return 1;

      entry->d.h = h;



      if (! htab_find (got_entries, entry))
 {
   htab_clear_slot (got_entries, entryp);
   entryp = htab_find_slot (got_entries, entry, INSERT);
   if (! *entryp)
     *entryp = entry;



   *(htab_t *)p = ((void*)0);
   return 0;
 }


    }

  return 1;
}
