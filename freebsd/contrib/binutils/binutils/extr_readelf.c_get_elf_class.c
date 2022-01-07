
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;





 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_elf_class (unsigned int elf_class)
{
  static char buff[32];

  switch (elf_class)
    {
    case 128: return _("none");
    case 130: return "ELF32";
    case 129: return "ELF64";
    default:
      snprintf (buff, sizeof (buff), _("<unknown: %x>"), elf_class);
      return buff;
    }
}
