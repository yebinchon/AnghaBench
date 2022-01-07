
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e_class; } ;
typedef TYPE_1__ Elf ;


 int ELFCLASSNONE ;

int
gelf_getclass(Elf *e)
{
 return (e != ((void*)0) ? e->e_class : ELFCLASSNONE);
}
