
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum language { ____Placeholder_language } language ;
struct TYPE_2__ {int la_language; char* la_name; } ;


 TYPE_1__** languages ;
 int languages_size ;

char *
language_str (enum language lang)
{
  int i;

  for (i = 0; i < languages_size; i++)
    {
      if (languages[i]->la_language == lang)
 {
   return languages[i]->la_name;
 }
    }
  return "Unknown";
}
