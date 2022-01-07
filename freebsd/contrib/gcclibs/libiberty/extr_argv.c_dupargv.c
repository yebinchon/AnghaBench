
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int freeargv (char**) ;
 scalar_t__ malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char **
dupargv (char **argv)
{
  int argc;
  char **copy;

  if (argv == ((void*)0))
    return ((void*)0);


  for (argc = 0; argv[argc] != ((void*)0); argc++);
  copy = (char **) malloc ((argc + 1) * sizeof (char *));
  if (copy == ((void*)0))
    return ((void*)0);


  for (argc = 0; argv[argc] != ((void*)0); argc++)
    {
      int len = strlen (argv[argc]);
      copy[argc] = (char *) malloc (len + 1);
      if (copy[argc] == ((void*)0))
 {
   freeargv (copy);
   return ((void*)0);
 }
      strcpy (copy[argc], argv[argc]);
    }
  copy[argc] = ((void*)0);
  return copy;
}
