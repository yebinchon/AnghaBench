
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_got_info {int local_gotno; int got_entries; } ;
struct TYPE_2__ {int addend; } ;
struct score_got_entry {long symndx; scalar_t__ gotidx; TYPE_1__ d; int * abfd; } ;
typedef int entry ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int INSERT ;
 int TRUE ;
 struct score_got_entry* bfd_alloc (int *,int) ;
 scalar_t__ htab_find_slot (int ,struct score_got_entry*,int ) ;
 int memcpy (struct score_got_entry*,struct score_got_entry*,int) ;

__attribute__((used)) static bfd_boolean
score_elf_record_local_got_symbol (bfd *abfd,
                                   long symndx,
                                   bfd_vma addend,
         struct score_got_info *g)
{
  struct score_got_entry entry, **loc;

  entry.abfd = abfd;
  entry.symndx = symndx;
  entry.d.addend = addend;
  loc = (struct score_got_entry **)htab_find_slot (g->got_entries, &entry, INSERT);

  if (*loc)
    return TRUE;

  entry.gotidx = g->local_gotno++;

  *loc = bfd_alloc (abfd, sizeof(entry));
  if (! *loc)
    return FALSE;

  memcpy (*loc, &entry, sizeof (entry));

  return TRUE;
}
