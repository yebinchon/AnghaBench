
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int language; int language_defn; } ;
 int language_asm ;
 int language_c ;
 int language_cplus ;
 int language_def (int ) ;
 int language_fortran ;
 int language_java ;
 int language_minimal ;

__attribute__((used)) static void
set_cu_language (unsigned int lang, struct dwarf2_cu *cu)
{
  switch (lang)
    {
    case 138:
    case 139:
      cu->language = language_c;
      break;
    case 137:
      cu->language = language_cplus;
      break;
    case 134:
    case 133:
    case 132:
      cu->language = language_fortran;
      break;
    case 130:
      cu->language = language_asm;
      break;
    case 131:
      cu->language = language_java;
      break;
    case 141:
    case 140:
    case 136:
    case 135:
    case 128:
    case 129:
    default:
      cu->language = language_minimal;
      break;
    }
  cu->language_defn = language_def (cu->language);
}
