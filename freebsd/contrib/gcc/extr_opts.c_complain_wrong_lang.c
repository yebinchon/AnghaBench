
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cl_option {unsigned int flags; } ;


 int free (char*) ;
 int warning (int ,char*,char const*,char*,char*) ;
 char* write_langs (unsigned int) ;

__attribute__((used)) static void
complain_wrong_lang (const char *text, const struct cl_option *option,
       unsigned int lang_mask)
{
  char *ok_langs, *bad_lang;

  ok_langs = write_langs (option->flags);
  bad_lang = write_langs (lang_mask);


  warning (0, "command line option \"%s\" is valid for %s but not for %s",
    text, ok_langs, bad_lang);

  free (ok_langs);
  free (bad_lang);
}
