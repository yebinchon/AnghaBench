
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const EOS ;
 int INITIAL_MAXARGC ;
 scalar_t__ ISBLANK (char const) ;
 scalar_t__ ISSPACE (char const) ;
 scalar_t__ alloca (scalar_t__) ;
 int freeargv (char**) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (char**,int) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char const*) ;

char **buildargv (const char *input)
{
  char *arg;
  char *copybuf;
  int squote = 0;
  int dquote = 0;
  int bsquote = 0;
  int argc = 0;
  int maxargc = 0;
  char **argv = ((void*)0);
  char **nargv;

  if (input != ((void*)0))
    {
      copybuf = (char *) alloca (strlen (input) + 1);


      do
 {

   while (ISBLANK (*input))
     {
       input++;
     }
   if ((maxargc == 0) || (argc >= (maxargc - 1)))
     {

       if (argv == ((void*)0))
  {
    maxargc = INITIAL_MAXARGC;
    nargv = (char **) malloc (maxargc * sizeof (char *));
  }
       else
  {
    maxargc *= 2;
    nargv = (char **) realloc (argv, maxargc * sizeof (char *));
  }
       if (nargv == ((void*)0))
  {
    if (argv != ((void*)0))
      {
        freeargv (argv);
        argv = ((void*)0);
      }
    break;
  }
       argv = nargv;
       argv[argc] = ((void*)0);
     }

   arg = copybuf;
   while (*input != EOS)
     {
       if (ISSPACE (*input) && !squote && !dquote && !bsquote)
  {
    break;
  }
       else
  {
    if (bsquote)
      {
        bsquote = 0;
        *arg++ = *input;
      }
    else if (*input == '\\')
      {
        bsquote = 1;
      }
    else if (squote)
      {
        if (*input == '\'')
   {
     squote = 0;
   }
        else
   {
     *arg++ = *input;
   }
      }
    else if (dquote)
      {
        if (*input == '"')
   {
     dquote = 0;
   }
        else
   {
     *arg++ = *input;
   }
      }
    else
      {
        if (*input == '\'')
   {
     squote = 1;
   }
        else if (*input == '"')
   {
     dquote = 1;
   }
        else
   {
     *arg++ = *input;
   }
      }
    input++;
  }
     }
   *arg = EOS;
   argv[argc] = strdup (copybuf);
   if (argv[argc] == ((void*)0))
     {
       freeargv (argv);
       argv = ((void*)0);
       break;
     }
   argc++;
   argv[argc] = ((void*)0);

   while (ISSPACE (*input))
     {
       input++;
     }
 }
      while (*input != EOS);
    }
  return (argv);
}
