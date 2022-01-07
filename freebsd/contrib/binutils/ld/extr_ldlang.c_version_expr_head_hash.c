
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_elf_version_expr {int symbol; } ;
typedef int hashval_t ;


 int htab_hash_string (int ) ;

__attribute__((used)) static hashval_t
version_expr_head_hash (const void *p)
{
  const struct bfd_elf_version_expr *e = p;

  return htab_hash_string (e->symbol);
}
