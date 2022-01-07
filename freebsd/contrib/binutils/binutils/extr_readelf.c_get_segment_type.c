
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buff ;
struct TYPE_2__ {int e_machine; } ;
 unsigned long PT_HIOS ;
 unsigned long PT_HIPROC ;


 unsigned long PT_LOOS ;
 unsigned long PT_LOPROC ;





 char* _ (char*) ;
 TYPE_1__ elf_header ;
 char* get_arm_segment_type (unsigned long) ;
 char* get_ia64_segment_type (unsigned long) ;
 char* get_mips_segment_type (unsigned long) ;
 char* get_parisc_segment_type (unsigned long) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static const char *
get_segment_type (unsigned long p_type)
{
  static char buff[32];

  switch (p_type)
    {
    case 131: return "NULL";
    case 133: return "LOAD";
    case 138: return "DYNAMIC";
    case 134: return "INTERP";
    case 132: return "NOTE";
    case 129: return "SHLIB";
    case 130: return "PHDR";
    case 128: return "TLS";

    case 137:
   return "GNU_EH_FRAME";
    case 135: return "GNU_STACK";
    case 136: return "GNU_RELRO";

    default:
      if ((p_type >= PT_LOPROC) && (p_type <= PT_HIPROC))
 {
   const char *result;

   switch (elf_header.e_machine)
     {
     case 143:
       result = get_arm_segment_type (p_type);
       break;
     case 141:
     case 140:
       result = get_mips_segment_type (p_type);
       break;
     case 139:
       result = get_parisc_segment_type (p_type);
       break;
     case 142:
       result = get_ia64_segment_type (p_type);
       break;
     default:
       result = ((void*)0);
       break;
     }

   if (result != ((void*)0))
     return result;

   sprintf (buff, "LOPROC+%lx", p_type - PT_LOPROC);
 }
      else if ((p_type >= PT_LOOS) && (p_type <= PT_HIOS))
 {
   const char *result;

   switch (elf_header.e_machine)
     {
     case 139:
       result = get_parisc_segment_type (p_type);
       break;
     case 142:
       result = get_ia64_segment_type (p_type);
       break;
     default:
       result = ((void*)0);
       break;
     }

   if (result != ((void*)0))
     return result;

   sprintf (buff, "LOOS+%lx", p_type - PT_LOOS);
 }
      else
 snprintf (buff, sizeof (buff), _("<unknown>: %lx"), p_type);

      return buff;
    }
}
