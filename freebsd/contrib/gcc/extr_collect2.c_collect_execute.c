
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;


 int PEX_LAST ;
 int PEX_SEARCH ;
 scalar_t__ debug ;
 int errno ;
 int fatal (char*,char const*) ;
 int fatal_perror (char*,...) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int notice (char*,char const*) ;
 struct pex_obj* pex_init (int ,char*,int *) ;
 char* pex_run (struct pex_obj*,int,char*,char**,char const*,char const*,int*) ;
 int stderr ;
 int stdout ;
 scalar_t__ vflag ;

struct pex_obj *
collect_execute (const char *prog, char **argv, const char *outname,
   const char *errname)
{
  struct pex_obj *pex;
  const char *errmsg;
  int err;

  if (vflag || debug)
    {
      char **p_argv;
      const char *str;

      if (argv[0])
 fprintf (stderr, "%s", argv[0]);
      else
 notice ("[cannot find %s]", prog);

      for (p_argv = &argv[1]; (str = *p_argv) != (char *) 0; p_argv++)
 fprintf (stderr, " %s", str);

      fprintf (stderr, "\n");
    }

  fflush (stdout);
  fflush (stderr);




  if (argv[0] == 0)
    fatal ("cannot find '%s'", prog);

  pex = pex_init (0, "collect2", ((void*)0));
  if (pex == ((void*)0))
    fatal_perror ("pex_init failed");

  errmsg = pex_run (pex, PEX_LAST | PEX_SEARCH, argv[0], argv, outname,
      errname, &err);
  if (errmsg != ((void*)0))
    {
      if (err != 0)
 {
   errno = err;
   fatal_perror ("%s", errmsg);
 }
      else
 fatal ("%s", errmsg);
    }

  return pex;
}
