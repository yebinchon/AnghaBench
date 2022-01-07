
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct language_defn {int la_language; } ;
typedef enum language { ____Placeholder_language } language ;


 struct language_defn const** languages ;
 int languages_size ;

const struct language_defn *
language_def (enum language lang)
{
  int i;

  for (i = 0; i < languages_size; i++)
    {
      if (languages[i]->la_language == lang)
 {
   return languages[i];
 }
    }
  return ((void*)0);
}
