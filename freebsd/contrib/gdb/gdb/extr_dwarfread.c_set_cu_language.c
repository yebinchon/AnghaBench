
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dieinfo {int at_language; int at_name; } ;
 int cu_language ;
 int cu_language_defn ;
 int deduce_language_from_filename (int ) ;
 int language_c ;
 int language_cplus ;
 int language_def (int ) ;
 int language_fortran ;
 int language_m2 ;
 int language_unknown ;

__attribute__((used)) static void
set_cu_language (struct dieinfo *dip)
{
  switch (dip->at_language)
    {
    case 135:
    case 136:
      cu_language = language_c;
      break;
    case 132:
      cu_language = language_cplus;
      break;
    case 129:
      cu_language = language_m2;
      break;
    case 131:
    case 130:
      cu_language = language_fortran;
      break;
    case 137:
    case 134:
    case 133:
    case 128:

      cu_language = language_unknown;
      break;
    default:

      cu_language = deduce_language_from_filename (dip->at_name);
      break;
    }
  cu_language_defn = language_def (cu_language);
}
