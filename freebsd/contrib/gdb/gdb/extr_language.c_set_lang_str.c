
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int la_name; } ;


 scalar_t__ concat (char*,int ,int *) ;
 TYPE_1__* current_language ;
 scalar_t__ language ;
 scalar_t__ language_mode ;
 scalar_t__ language_mode_auto ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
set_lang_str (void)
{
  char *prefix = "";

  if (language)
    xfree (language);
  if (language_mode == language_mode_auto)
    prefix = "auto; currently ";

  language = concat (prefix, current_language->la_name, ((void*)0));
}
