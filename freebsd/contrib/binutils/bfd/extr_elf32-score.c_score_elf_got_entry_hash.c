
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ address; } ;
struct score_got_entry {TYPE_2__* abfd; TYPE_1__ d; scalar_t__ symndx; } ;
typedef scalar_t__ hashval_t ;
struct TYPE_4__ {scalar_t__ id; } ;



__attribute__((used)) static hashval_t
score_elf_got_entry_hash (const void *entry_)
{
  const struct score_got_entry *entry = (struct score_got_entry *)entry_;

  return entry->symndx
    + (!entry->abfd ? entry->d.address : entry->abfd->id);
}
