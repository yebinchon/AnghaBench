
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_CURRENT ;
 int elf_version (int ) ;

void symbol__elf_init(void)
{
 elf_version(EV_CURRENT);
}
