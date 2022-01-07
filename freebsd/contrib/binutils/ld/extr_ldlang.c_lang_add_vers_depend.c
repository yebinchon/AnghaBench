
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_elf_version_tree {int name; struct bfd_elf_version_tree* next; } ;
struct bfd_elf_version_deps {struct bfd_elf_version_tree* version_needed; struct bfd_elf_version_deps* next; } ;


 int _ (char*) ;
 int einfo (int ,char const*) ;
 struct bfd_elf_version_tree* lang_elf_version_info ;
 scalar_t__ strcmp (int ,char const*) ;
 struct bfd_elf_version_deps* xmalloc (int) ;

struct bfd_elf_version_deps *
lang_add_vers_depend (struct bfd_elf_version_deps *list, const char *name)
{
  struct bfd_elf_version_deps *ret;
  struct bfd_elf_version_tree *t;

  ret = xmalloc (sizeof *ret);
  ret->next = list;

  for (t = lang_elf_version_info; t != ((void*)0); t = t->next)
    {
      if (strcmp (t->name, name) == 0)
 {
   ret->version_needed = t;
   return ret;
 }
    }

  einfo (_("%X%P: unable to find version dependency `%s'\n"), name);

  return ret;
}
