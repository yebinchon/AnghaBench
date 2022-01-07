
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int S_SET_OTHER (int *,int) ;

__attribute__((used)) static void
elf_s_set_other (symbolS *sym, int other)
{
  S_SET_OTHER (sym, other);
}
