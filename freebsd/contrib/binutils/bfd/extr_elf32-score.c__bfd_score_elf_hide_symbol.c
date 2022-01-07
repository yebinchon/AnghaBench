
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct score_got_info {scalar_t__ global_gotno; scalar_t__ assigned_gotno; int local_gotno; int * global_gotsym; int got_entries; struct score_got_info* next; } ;
struct TYPE_8__ {struct score_elf_link_hash_entry* h; } ;
struct score_got_entry {int symndx; TYPE_2__ d; int * abfd; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_12__ {TYPE_3__ got; } ;
struct score_elf_link_hash_entry {TYPE_6__ root; scalar_t__ forced_local; } ;
struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_11__ {int * dynobj; } ;
struct TYPE_7__ {struct score_got_info* got_info; } ;
struct TYPE_10__ {TYPE_1__ u; } ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 scalar_t__ TRUE ;
 int _bfd_elf_link_hash_hide_symbol (struct bfd_link_info*,TYPE_6__*,scalar_t__) ;
 TYPE_5__* elf_hash_table (struct bfd_link_info*) ;
 scalar_t__ htab_find (int ,struct score_got_entry*) ;
 int * score_elf_got_section (int *,int ) ;
 TYPE_4__* score_elf_section_data (int *) ;

__attribute__((used)) static void
_bfd_score_elf_hide_symbol (struct bfd_link_info *info,
       struct elf_link_hash_entry *entry,
       bfd_boolean force_local)
{
  bfd *dynobj;
  asection *got;
  struct score_got_info *g;
  struct score_elf_link_hash_entry *h;

  h = (struct score_elf_link_hash_entry *) entry;
  if (h->forced_local)
    return;
  h->forced_local = TRUE;

  dynobj = elf_hash_table (info)->dynobj;
  if (dynobj != ((void*)0) && force_local)
    {
      got = score_elf_got_section (dynobj, FALSE);
      if (got == ((void*)0))
 return;
      g = score_elf_section_data (got)->u.got_info;

      if (g->next)
 {
   struct score_got_entry e;
   struct score_got_info *gg = g;






   e.abfd = dynobj;
   e.symndx = -1;
   e.d.h = h;

   for (g = g->next; g != gg; g = g->next)
     if (htab_find (g->got_entries, &e))
       {
  BFD_ASSERT (g->global_gotno > 0);
  g->local_gotno++;
  g->global_gotno--;
       }





   if (h->root.got.offset == 2)
     {
       BFD_ASSERT (gg->assigned_gotno > 0);
       gg->assigned_gotno--;
     }
 }
      else if (g->global_gotno == 0 && g->global_gotsym == ((void*)0))



 g->local_gotno++;
      else if (h->root.got.offset == 1)
 {



   BFD_ASSERT (g->global_gotno > 0);
   g->local_gotno++;
   g->global_gotno--;
 }
    }

  _bfd_elf_link_hash_hide_symbol (info, &h->root, force_local);
}
