
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spu_link_hash_table {int num_overlays; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ asection ;


 int SEC_LOAD ;
 TYPE_1__* bfd_get_section_by_name (int *,char*) ;
 struct spu_link_hash_table* spu_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static int
spu_elf_additional_program_headers (bfd *abfd, struct bfd_link_info *info)
{
  struct spu_link_hash_table *htab = spu_hash_table (info);
  int extra = htab->num_overlays;
  asection *sec;

  if (extra)
    ++extra;

  sec = bfd_get_section_by_name (abfd, ".toe");
  if (sec != ((void*)0) && (sec->flags & SEC_LOAD) != 0)
    ++extra;

  return extra;
}
