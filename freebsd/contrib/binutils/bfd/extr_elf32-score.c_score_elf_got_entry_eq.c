
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ address; scalar_t__ addend; scalar_t__ h; } ;
struct score_got_entry {scalar_t__ abfd; scalar_t__ symndx; TYPE_1__ d; } ;



__attribute__((used)) static int
score_elf_got_entry_eq (const void *entry1, const void *entry2)
{
  const struct score_got_entry *e1 = (struct score_got_entry *)entry1;
  const struct score_got_entry *e2 = (struct score_got_entry *)entry2;

  return e1->abfd == e2->abfd && e1->symndx == e2->symndx
    && (! e1->abfd ? e1->d.address == e2->d.address
 : e1->symndx >= 0 ? e1->d.addend == e2->d.addend
 : e1->d.h == e2->d.h);
}
