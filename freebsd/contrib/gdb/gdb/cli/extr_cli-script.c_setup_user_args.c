
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_args {int count; TYPE_1__* a; struct user_args* next; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {char* arg; int len; } ;


 unsigned int MAXUSERARGS ;
 int arg_cleanup ;
 int error (char*,unsigned int) ;
 struct cleanup* make_cleanup (int ,int ) ;
 int memset (struct user_args*,int ,int) ;
 struct user_args* user_args ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct cleanup *
setup_user_args (char *p)
{
  struct user_args *args;
  struct cleanup *old_chain;
  unsigned int arg_count = 0;

  args = (struct user_args *) xmalloc (sizeof (struct user_args));
  memset (args, 0, sizeof (struct user_args));

  args->next = user_args;
  user_args = args;

  old_chain = make_cleanup (arg_cleanup, 0 );

  if (p == ((void*)0))
    return old_chain;

  while (*p)
    {
      char *start_arg;
      int squote = 0;
      int dquote = 0;
      int bsquote = 0;

      if (arg_count >= MAXUSERARGS)
 {
   error ("user defined function may only have %d arguments.\n",
   MAXUSERARGS);
   return old_chain;
 }


      while (*p == ' ' || *p == '\t')
 p++;


      start_arg = p;
      user_args->a[arg_count].arg = p;


      while (*p)
 {
   if (((*p == ' ' || *p == '\t')) && !squote && !dquote && !bsquote)
     break;
   else
     {
       if (bsquote)
  bsquote = 0;
       else if (*p == '\\')
  bsquote = 1;
       else if (squote)
  {
    if (*p == '\'')
      squote = 0;
  }
       else if (dquote)
  {
    if (*p == '"')
      dquote = 0;
  }
       else
  {
    if (*p == '\'')
      squote = 1;
    else if (*p == '"')
      dquote = 1;
  }
       p++;
     }
 }

      user_args->a[arg_count].len = p - start_arg;
      arg_count++;
      user_args->count++;
    }
  return old_chain;
}
