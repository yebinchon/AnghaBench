
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum language { ____Placeholder_language } language ;
struct TYPE_3__ {int la_language; } ;


 TYPE_1__* current_language ;
 TYPE_1__** languages ;
 int languages_size ;
 int set_lang_str () ;
 int set_type_range_case () ;

enum language
set_language (enum language lang)
{
  int i;
  enum language prev_language;

  prev_language = current_language->la_language;

  for (i = 0; i < languages_size; i++)
    {
      if (languages[i]->la_language == lang)
 {
   current_language = languages[i];
   set_type_range_case ();
   set_lang_str ();
   break;
 }
    }

  return prev_language;
}
