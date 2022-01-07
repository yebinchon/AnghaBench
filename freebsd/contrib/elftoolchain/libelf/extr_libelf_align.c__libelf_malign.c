
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int a32; unsigned int a64; } ;
typedef size_t Elf_Type ;


 int ELFCLASS32 ;
 size_t ELF_T_NUM ;
 TYPE_1__* malign ;

unsigned int
_libelf_malign(Elf_Type t, int elfclass)
{
 if (t >= ELF_T_NUM || (int) t < 0)
  return (0);

 return (elfclass == ELFCLASS32 ? malign[t].a32 :
     malign[t].a64);
}
