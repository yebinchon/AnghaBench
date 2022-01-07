
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argv_free (char**) ;
 int count_argc (char const*) ;
 char* skip_arg (char const*) ;
 char* skip_sep (char const*) ;
 char* strndup (char const*,int) ;
 char** zalloc (int) ;

char **argv_split(const char *str, int *argcp)
{
 int argc = count_argc(str);
 char **argv = zalloc(sizeof(*argv) * (argc+1));
 char **argvp;

 if (argv == ((void*)0))
  goto out;

 if (argcp)
  *argcp = argc;

 argvp = argv;

 while (*str) {
  str = skip_sep(str);

  if (*str) {
   const char *p = str;
   char *t;

   str = skip_arg(str);

   t = strndup(p, str-p);
   if (t == ((void*)0))
    goto fail;
   *argvp++ = t;
  }
 }
 *argvp = ((void*)0);

out:
 return argv;

fail:
 argv_free(argv);
 return ((void*)0);
}
