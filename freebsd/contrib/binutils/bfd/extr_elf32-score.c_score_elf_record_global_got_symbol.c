
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct score_got_info {int got_entries; } ;
struct TYPE_3__ {struct score_elf_link_hash_entry* h; } ;
struct score_got_entry {int symndx; int gotidx; TYPE_1__ d; int * abfd; } ;
struct score_elf_link_hash_entry {int dummy; } ;
struct TYPE_4__ {int offset; } ;
struct elf_link_hash_entry {int dynindx; TYPE_2__ got; int other; } ;
struct bfd_link_info {int dummy; } ;
typedef int entry ;
typedef int bfd_boolean ;
typedef int bfd ;


 int ELF_ST_VISIBILITY (int ) ;
 int FALSE ;
 int INSERT ;
 int MINUS_ONE ;


 int TRUE ;
 int _bfd_score_elf_hide_symbol (struct bfd_link_info*,struct elf_link_hash_entry*,int ) ;
 struct score_got_entry* bfd_alloc (int *,int) ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 scalar_t__ htab_find_slot (int ,struct score_got_entry*,int ) ;
 int memcpy (struct score_got_entry*,struct score_got_entry*,int) ;

__attribute__((used)) static bfd_boolean
score_elf_record_global_got_symbol (struct elf_link_hash_entry *h,
         bfd *abfd,
                                    struct bfd_link_info *info,
        struct score_got_info *g)
{
  struct score_got_entry entry, **loc;


  if (h->dynindx == -1)
    {
      switch (ELF_ST_VISIBILITY (h->other))
 {
 case 128:
 case 129:
   _bfd_score_elf_hide_symbol (info, h, TRUE);
   break;
 }
      if (!bfd_elf_link_record_dynamic_symbol (info, h))
 return FALSE;
    }

  entry.abfd = abfd;
  entry.symndx = -1;
  entry.d.h = (struct score_elf_link_hash_entry *)h;

  loc = (struct score_got_entry **)htab_find_slot (g->got_entries, &entry, INSERT);



  if (*loc)
    return TRUE;

  *loc = bfd_alloc (abfd, sizeof entry);
  if (! *loc)
    return FALSE;

  entry.gotidx = -1;

  memcpy (*loc, &entry, sizeof (entry));

  if (h->got.offset != MINUS_ONE)
    return TRUE;




  h->got.offset = 1;

  return TRUE;
}
