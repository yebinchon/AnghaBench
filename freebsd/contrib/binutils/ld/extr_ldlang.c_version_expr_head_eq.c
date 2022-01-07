
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_elf_version_expr {int symbol; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
version_expr_head_eq (const void *p1, const void *p2)
{
  const struct bfd_elf_version_expr *e1 = p1;
  const struct bfd_elf_version_expr *e2 = p2;

  return strcmp (e1->symbol, e2->symbol) == 0;
}
