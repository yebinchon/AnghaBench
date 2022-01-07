
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** malloc (int) ;
 int strlen (char*) ;
 char* strtok (char*,char const*) ;

__attribute__((used)) static char **
make_argv(char *s)
{
 const char *ws = "\f\n\r\t\v ";
 char **argv = malloc(sizeof (char *) * (strlen(s) / 2 + 1));
 int argc = 0;
 char *p = s;

 if (argv == ((void*)0))
  return (((void*)0));

 for (p = strtok(s, ws); p != ((void*)0); p = strtok(((void*)0), ws))
  argv[argc++] = p;

 if (argc == 0)
  argv[argc++] = s;

 argv[argc] = ((void*)0);
 return (argv);
}
