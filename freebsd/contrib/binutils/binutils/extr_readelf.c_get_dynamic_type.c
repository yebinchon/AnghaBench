
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buff ;
struct TYPE_2__ {int e_machine; } ;
 unsigned long DT_HIOS ;
 unsigned long DT_HIPROC ;




 unsigned long DT_LOOS ;
 unsigned long DT_LOPROC ;
 unsigned long OLD_DT_HIOS ;
 unsigned long OLD_DT_LOOS ;
 char* _ (char*) ;
 TYPE_1__ elf_header ;
 char* get_alpha_dynamic_type (unsigned long) ;
 char* get_ia64_dynamic_type (unsigned long) ;
 char* get_mips_dynamic_type (unsigned long) ;
 char* get_parisc_dynamic_type (unsigned long) ;
 char* get_ppc64_dynamic_type (unsigned long) ;
 char* get_ppc_dynamic_type (unsigned long) ;
 char* get_score_dynamic_type (unsigned long) ;
 char* get_sparc64_dynamic_type (unsigned long) ;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static const char *
get_dynamic_type (unsigned long type)
{
  static char buff[64];

  switch (type)
    {
    case 173: return "NULL";
    case 174: return "NEEDED";
    case 168: return "PLTRELSZ";
    case 172: return "PLTGOT";
    case 182: return "HASH";
    case 152: return "STRTAB";
    case 146: return "SYMTAB";
    case 163: return "RELA";
    case 160: return "RELASZ";
    case 161: return "RELAENT";
    case 153: return "STRSZ";
    case 150: return "SYMENT";
    case 181: return "INIT";
    case 193: return "FINI";
    case 154: return "SONAME";
    case 156: return "RPATH";
    case 151: return "SYMBOLIC";
    case 164: return "REL";
    case 157: return "RELSZ";
    case 158: return "RELENT";
    case 169: return "PLTREL";
    case 197: return "DEBUG";
    case 145: return "TEXTREL";
    case 178: return "JMPREL";
    case 200: return "BIND_NOW";
    case 180: return "INIT_ARRAY";
    case 192: return "FINI_ARRAY";
    case 179: return "INIT_ARRAYSZ";
    case 191: return "FINI_ARRAYSZ";
    case 155: return "RUNPATH";
    case 190: return "FLAGS";

    case 166: return "PREINIT_ARRAY";
    case 165: return "PREINIT_ARRAYSZ";

    case 199: return "CHECKSUM";
    case 170: return "PLTPADSZ";
    case 177: return "MOVEENT";
    case 176: return "MOVESZ";
    case 195: return "FEATURE";
    case 167: return "POSFLAG_1";
    case 147: return "SYMINSZ";
    case 149: return "SYMINENT";

    case 203: return "ADDRRNGLO";
    case 198: return "CONFIG";
    case 196: return "DEPAUDIT";
    case 202: return "AUDIT";
    case 171: return "PLTPAD";
    case 175: return "MOVETAB";
    case 148: return "SYMINFO";

    case 137: return "VERSYM";

    case 144: return "TLSDESC_GOT";
    case 143: return "TLSDESC_PLT";
    case 162: return "RELACOUNT";
    case 159: return "RELCOUNT";
    case 189: return "FLAGS_1";
    case 141: return "VERDEF";
    case 140: return "VERDEFNUM";
    case 139: return "VERNEED";
    case 138: return "VERNEEDNUM";

    case 201: return "AUXILIARY";
    case 142: return "USED";
    case 194: return "FILTER";

    case 183: return "GNU_PRELINKED";
    case 188: return "GNU_CONFLICT";
    case 187: return "GNU_CONFLICTSZ";
    case 185: return "GNU_LIBLIST";
    case 184: return "GNU_LIBLISTSZ";
    case 186: return "GNU_HASH";

    default:
      if ((type >= DT_LOPROC) && (type <= DT_HIPROC))
 {
   const char *result;

   switch (elf_header.e_machine)
     {
     case 134:
     case 133:
       result = get_mips_dynamic_type (type);
       break;
     case 128:
       result = get_sparc64_dynamic_type (type);
       break;
     case 131:
       result = get_ppc_dynamic_type (type);
       break;
     case 130:
       result = get_ppc64_dynamic_type (type);
       break;
     case 135:
       result = get_ia64_dynamic_type (type);
       break;
     case 136:
       result = get_alpha_dynamic_type (type);
       break;
     case 129:
       result = get_score_dynamic_type (type);
       break;
     default:
       result = ((void*)0);
       break;
     }

   if (result != ((void*)0))
     return result;

   snprintf (buff, sizeof (buff), _("Processor Specific: %lx"), type);
 }
      else if (((type >= DT_LOOS) && (type <= DT_HIOS))
        || (elf_header.e_machine == 132
     && (type >= OLD_DT_LOOS) && (type <= OLD_DT_HIOS)))
 {
   const char *result;

   switch (elf_header.e_machine)
     {
     case 132:
       result = get_parisc_dynamic_type (type);
       break;
     default:
       result = ((void*)0);
       break;
     }

   if (result != ((void*)0))
     return result;

   snprintf (buff, sizeof (buff), _("Operating System specific: %lx"),
      type);
 }
      else
 snprintf (buff, sizeof (buff), _("<unknown>: %lx"), type);

      return buff;
    }
}
