
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct bfd_elf_version_expr* list; } ;
struct TYPE_3__ {struct bfd_elf_version_expr* list; } ;
struct bfd_elf_version_tree {unsigned int name_indx; int match; TYPE_2__ locals; TYPE_1__ globals; } ;
struct bfd_elf_version_expr {int dummy; } ;


 int lang_vers_match ;
 struct bfd_elf_version_tree* xcalloc (int,int) ;

struct bfd_elf_version_tree *
lang_new_vers_node (struct bfd_elf_version_expr *globals,
      struct bfd_elf_version_expr *locals)
{
  struct bfd_elf_version_tree *ret;

  ret = xcalloc (1, sizeof *ret);
  ret->globals.list = globals;
  ret->locals.list = locals;
  ret->match = lang_vers_match;
  ret->name_indx = (unsigned int) -1;
  return ret;
}
