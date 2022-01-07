
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;


 scalar_t__ MSYMBOL_INFO (struct minimal_symbol*) ;

__attribute__((used)) static int
msymbol_is_special (struct minimal_symbol *msym)
{
  return (((long) MSYMBOL_INFO (msym) & 0x80000000) != 0);
}
