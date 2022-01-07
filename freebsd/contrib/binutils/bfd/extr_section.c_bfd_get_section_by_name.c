
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section_hash_entry {int section; } ;
struct TYPE_3__ {int section_htab; } ;
typedef TYPE_1__ bfd ;
typedef int asection ;


 int FALSE ;
 struct section_hash_entry* section_hash_lookup (int *,char const*,int ,int ) ;

asection *
bfd_get_section_by_name (bfd *abfd, const char *name)
{
  struct section_hash_entry *sh;

  sh = section_hash_lookup (&abfd->section_htab, name, FALSE, FALSE);
  if (sh != ((void*)0))
    return &sh->section;

  return ((void*)0);
}
