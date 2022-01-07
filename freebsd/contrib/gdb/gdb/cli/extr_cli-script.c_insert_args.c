
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int count; TYPE_1__* a; } ;
struct TYPE_3__ {int len; char* arg; } ;


 int error (char*,unsigned int) ;
 char* locate_arg (char*) ;
 int memcpy (char*,char*,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 TYPE_2__* user_args ;
 scalar_t__ xmalloc (unsigned int) ;

__attribute__((used)) static char *
insert_args (char *line)
{
  char *p, *save_line, *new_line;
  unsigned len, i;


  save_line = line;
  len = 0;
  while ((p = locate_arg (line)))
    {
      len += p - line;
      i = p[4] - '0';

      if (i >= user_args->count)
 {
   error ("Missing argument %d in user function.\n", i);
   return ((void*)0);
 }
      len += user_args->a[i].len;
      line = p + 5;
    }


  len += strlen (line);


  new_line = (char *) xmalloc (len + 1);
  if (new_line == ((void*)0))
    return ((void*)0);


  line = save_line;


  save_line = new_line;

  while ((p = locate_arg (line)))
    {
      int i, len;

      memcpy (new_line, line, p - line);
      new_line += p - line;
      i = p[4] - '0';

      len = user_args->a[i].len;
      if (len)
 {
   memcpy (new_line, user_args->a[i].arg, len);
   new_line += len;
 }
      line = p + 5;
    }

  strcpy (new_line, line);


  return save_line;
}
