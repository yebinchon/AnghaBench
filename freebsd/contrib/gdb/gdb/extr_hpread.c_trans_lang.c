
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum language { ____Placeholder_language } language ;
typedef enum hp_language { ____Placeholder_hp_language } hp_language ;


 int HP_LANGUAGE_C ;
 int HP_LANGUAGE_CPLUSPLUS ;
 int HP_LANGUAGE_FORTRAN ;
 int language_c ;
 int language_cplus ;
 int language_fortran ;
 int language_unknown ;

__attribute__((used)) static enum language
trans_lang (enum hp_language in_lang)
{
  if (in_lang == HP_LANGUAGE_C)
    return language_c;

  else if (in_lang == HP_LANGUAGE_CPLUSPLUS)
    return language_cplus;

  else if (in_lang == HP_LANGUAGE_FORTRAN)
    return language_fortran;

  else
    return language_unknown;
}
