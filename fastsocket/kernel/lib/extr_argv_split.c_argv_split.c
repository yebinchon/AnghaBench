
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int argv_free (char**) ;
 int count_argc (char const*) ;
 char* kstrndup (char const*,int,int ) ;
 char** kzalloc (int,int ) ;
 char* skip_arg (char const*) ;
 char* skip_spaces (char const*) ;

char **argv_split(gfp_t gfp, const char *str, int *argcp)
{
 int argc = count_argc(str);
 char **argv = kzalloc(sizeof(*argv) * (argc+1), gfp);
 char **argvp;

 if (argv == ((void*)0))
  goto out;

 if (argcp)
  *argcp = argc;

 argvp = argv;

 while (*str) {
  str = skip_spaces(str);

  if (*str) {
   const char *p = str;
   char *t;

   str = skip_arg(str);

   t = kstrndup(p, str-p, gfp);
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
