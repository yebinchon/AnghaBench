
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppc_link_hash_entry {scalar_t__ fake; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct elf_link_hash_entry {TYPE_1__ root; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;


 struct elf_link_hash_entry* _bfd_elf_archive_symbol_lookup (int *,struct bfd_link_info*,char const*) ;
 char* bfd_alloc (int *,size_t) ;
 scalar_t__ bfd_link_hash_undefweak ;
 int bfd_release (int *,char*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static struct elf_link_hash_entry *
ppc64_elf_archive_symbol_lookup (bfd *abfd,
     struct bfd_link_info *info,
     const char *name)
{
  struct elf_link_hash_entry *h;
  char *dot_name;
  size_t len;

  h = _bfd_elf_archive_symbol_lookup (abfd, info, name);
  if (h != ((void*)0)


      && !(h->root.type == bfd_link_hash_undefweak
    && ((struct ppc_link_hash_entry *) h)->fake))
    return h;

  if (name[0] == '.')
    return h;

  len = strlen (name);
  dot_name = bfd_alloc (abfd, len + 2);
  if (dot_name == ((void*)0))
    return (struct elf_link_hash_entry *) 0 - 1;
  dot_name[0] = '.';
  memcpy (dot_name + 1, name, len + 1);
  h = _bfd_elf_archive_symbol_lookup (abfd, info, dot_name);
  bfd_release (abfd, dot_name);
  return h;
}
