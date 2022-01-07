
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct regexp {int dummy; } ;
typedef TYPE_1__* regexp_t ;
struct TYPE_8__ {int repeat_num; TYPE_1__* regexp; } ;
struct TYPE_7__ {int mode; } ;


 TYPE_5__* REGEXP_REPEAT (TYPE_1__*) ;
 int TRUE ;
 int atoi (char*) ;
 TYPE_1__* create_node (int) ;
 int fatal (char*,char const*,int ) ;
 TYPE_1__* gen_regexp_el (char const*) ;
 char** get_str_vect (char const*,int*,char,int ) ;
 int reserv_str ;
 int rm_repeat ;

__attribute__((used)) static regexp_t
gen_regexp_repeat (const char *str)
{
  regexp_t regexp;
  regexp_t repeat;
  char **repeat_vect;
  int els_num;
  int i;

  repeat_vect = get_str_vect (str, &els_num, '*', TRUE);
  if (repeat_vect == ((void*)0))
    fatal ("invalid `%s' in reservation `%s'", str, reserv_str);
  if (els_num > 1)
    {
      regexp = gen_regexp_el (repeat_vect [0]);
      for (i = 1; i < els_num; i++)
 {
   repeat = create_node (sizeof (struct regexp));
   repeat->mode = rm_repeat;
   REGEXP_REPEAT (repeat)->regexp = regexp;
   REGEXP_REPEAT (repeat)->repeat_num = atoi (repeat_vect [i]);
          if (REGEXP_REPEAT (repeat)->repeat_num <= 1)
            fatal ("repetition `%s' <= 1 in reservation `%s'",
                   str, reserv_str);
          regexp = repeat;
 }
      return regexp;
    }
  else
    return gen_regexp_el (str);
}
