
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHF_ALLOC ;
 int SHF_EXECINSTR ;
 int SHF_GROUP ;
 int SHF_MERGE ;
 int SHF_STRINGS ;
 int SHF_TLS ;
 int SHF_WRITE ;
 char* _ (char*) ;
 int as_fatal (char*,char*) ;
 int md_elf_section_letter (char,char**) ;

__attribute__((used)) static int
obj_elf_parse_section_letters (char *str, size_t len)
{
  int attr = 0;

  while (len > 0)
    {
      switch (*str)
 {
 case 'a':
   attr |= SHF_ALLOC;
   break;
 case 'w':
   attr |= SHF_WRITE;
   break;
 case 'x':
   attr |= SHF_EXECINSTR;
   break;
 case 'M':
   attr |= SHF_MERGE;
   break;
 case 'S':
   attr |= SHF_STRINGS;
   break;
 case 'G':
   attr |= SHF_GROUP;
   break;
 case 'T':
   attr |= SHF_TLS;
   break;

 case 'm':
   if (*(str - 1) == 'a')
     {
       attr |= SHF_MERGE;
       if (len > 1 && str[1] == 's')
  {
    attr |= SHF_STRINGS;
    str++, len--;
  }
       break;
     }
 default:
   {
     char *bad_msg = _("unrecognized .section attribute: want a,w,x,M,S,G,T");






       as_fatal ("%s", bad_msg);
   }
   break;
 }
      str++, len--;
    }

  return attr;
}
