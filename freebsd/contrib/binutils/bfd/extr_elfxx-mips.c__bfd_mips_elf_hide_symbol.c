
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


struct mips_got_info {scalar_t__ global_gotno; scalar_t__ assigned_gotno; int local_gotno; int * global_gotsym; int got_entries; struct mips_got_info* next; } ;
struct TYPE_8__ {struct mips_elf_link_hash_entry* h; } ;
struct mips_got_entry {int symndx; scalar_t__ tls_type; TYPE_2__ d; int * abfd; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_3__ got; } ;
struct mips_elf_link_hash_entry {TYPE_6__ root; scalar_t__ forced_local; } ;
struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_11__ {int * dynobj; } ;
struct TYPE_7__ {struct mips_got_info* got_info; } ;
struct TYPE_10__ {TYPE_1__ u; } ;


 int BFD_ASSERT (int) ;
 scalar_t__ STT_TLS ;
 int TRUE ;
 int _bfd_elf_link_hash_hide_symbol (struct bfd_link_info*,TYPE_6__*,scalar_t__) ;
 TYPE_5__* elf_hash_table (struct bfd_link_info*) ;
 scalar_t__ htab_find (int ,struct mips_got_entry*) ;
 int * mips_elf_got_section (int *,int ) ;
 TYPE_4__* mips_elf_section_data (int *) ;

void
_bfd_mips_elf_hide_symbol (struct bfd_link_info *info,
      struct elf_link_hash_entry *entry,
      bfd_boolean force_local)
{
  bfd *dynobj;
  asection *got;
  struct mips_got_info *g;
  struct mips_elf_link_hash_entry *h;

  h = (struct mips_elf_link_hash_entry *) entry;
  if (h->forced_local)
    return;
  h->forced_local = force_local;

  dynobj = elf_hash_table (info)->dynobj;
  if (dynobj != ((void*)0) && force_local && h->root.type != STT_TLS
      && (got = mips_elf_got_section (dynobj, TRUE)) != ((void*)0)
      && (g = mips_elf_section_data (got)->u.got_info) != ((void*)0))
    {
      if (g->next)
 {
   struct mips_got_entry e;
   struct mips_got_info *gg = g;






   e.abfd = dynobj;
   e.symndx = -1;
   e.d.h = h;
   e.tls_type = 0;

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
