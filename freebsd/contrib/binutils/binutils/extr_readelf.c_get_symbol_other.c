
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_machine; } ;



 char* _ (char*) ;
 TYPE_1__ elf_header ;
 char* get_mips_symbol_other (unsigned int) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_symbol_other (unsigned int other)
{
  const char * result = ((void*)0);
  static char buff [32];

  if (other == 0)
    return "";

  switch (elf_header.e_machine)
    {
    case 128:
      result = get_mips_symbol_other (other);
    default:
      break;
    }

  if (result)
    return result;

  snprintf (buff, sizeof buff, _("<other>: %x"), other);
  return buff;
}
