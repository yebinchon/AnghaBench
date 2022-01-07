
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {int dummy; } ;
struct objfile {int dummy; } ;
typedef enum language { ____Placeholder_language } language ;


 int language_unknown ;
 int * lookup_minimal_symbol (char*,char const*,struct objfile*) ;

enum language
ada_update_initial_language (enum language lang,
        struct partial_symtab *main_pst)
{
  if (lookup_minimal_symbol ("adainit", (const char *) ((void*)0),
        (struct objfile *) ((void*)0)) != ((void*)0))


    return language_unknown;

  return lang;
}
