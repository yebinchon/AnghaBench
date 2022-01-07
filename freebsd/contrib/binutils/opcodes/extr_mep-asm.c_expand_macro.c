
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* expansion; } ;
typedef TYPE_1__ macro ;
struct TYPE_6__ {char* start; int len; } ;
typedef TYPE_2__ arg ;


 char MAXARGS ;
 char* expand_string (char*,int ) ;
 int free (char*) ;
 char* str_append (char*,char*,int) ;

__attribute__((used)) static char *
expand_macro (arg *args, int narg, macro *mac)
{
  char *result = 0, *rescanned_result = 0;
  char *e = mac->expansion;
  char *mark = e;
  int arg = 0;


  while (*e)
    {
      if (*e == '`' &&
   (*e+1) &&
   ((*(e + 1) - '1') <= MAXARGS) &&
   ((*(e + 1) - '1') <= narg))
 {
   result = str_append (result, mark, e - mark);
   arg = (*(e + 1) - '1');

   result = str_append (result, args[arg].start, args[arg].len);
   ++e;
   mark = e+1;
 }
      ++e;
    }

  if (mark != e)
    result = str_append (result, mark, e - mark);

  if (result)
    {
      rescanned_result = expand_string (result, 0);
      free (result);
      return rescanned_result;
    }
  else
    return result;
}
