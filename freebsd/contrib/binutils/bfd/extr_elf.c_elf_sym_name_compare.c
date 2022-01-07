
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_symbol {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
elf_sym_name_compare (const void *arg1, const void *arg2)
{
  const struct elf_symbol *s1 = (const struct elf_symbol *) arg1;
  const struct elf_symbol *s2 = (const struct elf_symbol *) arg2;
  return strcmp (s1->name, s2->name);
}
