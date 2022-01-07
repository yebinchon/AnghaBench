
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum language { ____Placeholder_language } language ;
struct TYPE_2__ {int la_language; int la_name; } ;


 scalar_t__ DEPRECATED_STREQ (int ,char*) ;
 int language_unknown ;
 TYPE_1__** languages ;
 int languages_size ;

enum language
language_enum (char *str)
{
  int i;

  for (i = 0; i < languages_size; i++)
    if (DEPRECATED_STREQ (languages[i]->la_name, str))
      return languages[i]->la_language;

  return language_unknown;
}
