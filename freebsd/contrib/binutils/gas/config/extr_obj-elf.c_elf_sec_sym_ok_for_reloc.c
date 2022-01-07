
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asection ;


 int obj_sec_sym_ok_for_reloc (int *) ;

__attribute__((used)) static int
elf_sec_sym_ok_for_reloc (asection *sec)
{
  return obj_sec_sym_ok_for_reloc (sec);
}
