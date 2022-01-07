
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct regexp {int dummy; } ;
typedef TYPE_1__* regexp_t ;
struct TYPE_8__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_7__ {int mode; } ;


 TYPE_5__* REGEXP_ONEOF (TYPE_1__*) ;
 int TRUE ;
 TYPE_1__* create_node (int) ;
 int fatal (char*,char const*,int ) ;
 TYPE_1__* gen_regexp_allof (char const*) ;
 char** get_str_vect (char const*,int*,char,int ) ;
 int reserv_str ;
 int rm_oneof ;

__attribute__((used)) static regexp_t
gen_regexp_oneof (const char *str)
{
  regexp_t oneof;
  char **oneof_vect;
  int els_num;
  int i;

  oneof_vect = get_str_vect (str, &els_num, '|', TRUE);
  if (oneof_vect == ((void*)0))
    fatal ("invalid `%s' in reservation `%s'", str, reserv_str);
  if (els_num > 1)
    {
      oneof = create_node (sizeof (struct regexp)
      + sizeof (regexp_t) * (els_num - 1));
      oneof->mode = rm_oneof;
      REGEXP_ONEOF (oneof)->regexps_num = els_num;
      for (i = 0; i < els_num; i++)
 REGEXP_ONEOF (oneof)->regexps [i] = gen_regexp_allof (oneof_vect [i]);
      return oneof;
    }
  else
    return gen_regexp_allof (str);
}
