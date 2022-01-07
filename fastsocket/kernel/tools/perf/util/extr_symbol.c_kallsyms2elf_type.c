
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int STB_GLOBAL ;
 int STB_LOCAL ;
 int STB_WEAK ;
 scalar_t__ isupper (char) ;

__attribute__((used)) static u8 kallsyms2elf_type(char type)
{
 if (type == 'W')
  return STB_WEAK;

 return isupper(type) ? STB_GLOBAL : STB_LOCAL;
}
