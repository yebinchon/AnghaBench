
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;


 char ELF_VER_CHR ;
 int FALSE ;
 char* bfd_alloc (int *,size_t) ;
 int bfd_release (int *,char*) ;
 int elf_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (int ,char const*,int ,int ,int ) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

struct elf_link_hash_entry *
_bfd_elf_archive_symbol_lookup (bfd *abfd,
    struct bfd_link_info *info,
    const char *name)
{
  struct elf_link_hash_entry *h;
  char *p, *copy;
  size_t len, first;

  h = elf_link_hash_lookup (elf_hash_table (info), name, FALSE, FALSE, FALSE);
  if (h != ((void*)0))
    return h;






  p = strchr (name, ELF_VER_CHR);
  if (p == ((void*)0) || p[1] != ELF_VER_CHR)
    return h;


  len = strlen (name);
  copy = bfd_alloc (abfd, len);
  if (copy == ((void*)0))
    return (struct elf_link_hash_entry *)(intptr_t)-1;

  first = p - name + 1;
  memcpy (copy, name, first);
  memcpy (copy + first, name + first + 1, len - first);

  h = elf_link_hash_lookup (elf_hash_table (info), copy, FALSE, FALSE, FALSE);
  if (h == ((void*)0))
    {


      copy[first - 1] = '\0';
      h = elf_link_hash_lookup (elf_hash_table (info), copy,
    FALSE, FALSE, FALSE);
    }

  bfd_release (abfd, copy);
  return h;
}
