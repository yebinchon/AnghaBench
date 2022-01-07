
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;
typedef enum pass { ____Placeholder_pass } pass ;
typedef int FILE ;


 int ISSPACE (int) ;
 char* NM_FLAGS ;
 int PASS_LIB ;
 int PASS_SECOND ;
 int PEX_USE_PIPES ;
 int SIGINT ;
 int SIGQUIT ;
 void SIG_IGN (int) ;
 int add_to_list (int *,char*) ;
 int constructors ;
 scalar_t__ debug ;
 int destructors ;
 int do_wait (char*,struct pex_obj*) ;
 int errno ;
 int fatal (char*,...) ;
 int fatal_perror (char*,...) ;
 int fflush (int ) ;
 char* fgets (char*,int,int *) ;
 int fprintf (int ,char*,...) ;
 int frame_tables ;
 int is_ctor_dtor (char*) ;
 char* nm_file_name ;
 struct pex_obj* pex_init (int ,char*,int *) ;
 int * pex_read_output (struct pex_obj*,int ) ;
 char* pex_run (struct pex_obj*,int ,char*,char**,int *,int *,int*) ;
 scalar_t__ signal (int ,void (*) (int)) ;
 int stderr ;
 int stdout ;
 scalar_t__ vflag ;

__attribute__((used)) static void
scan_prog_file (const char *prog_name, enum pass which_pass)
{
  void (*int_handler) (int);



  char *real_nm_argv[4];
  const char **nm_argv = (const char **) real_nm_argv;
  int argc = 0;
  struct pex_obj *pex;
  const char *errmsg;
  int err;
  char *p, buf[1024];
  FILE *inf;

  if (which_pass == PASS_SECOND)
    return;


  if (nm_file_name == 0)
    fatal ("cannot find 'nm'");

  nm_argv[argc++] = nm_file_name;
  if (NM_FLAGS[0] != '\0')
    nm_argv[argc++] = NM_FLAGS;

  nm_argv[argc++] = prog_name;
  nm_argv[argc++] = (char *) 0;


  if (vflag)
    {
      const char **p_argv;
      const char *str;

      for (p_argv = &nm_argv[0]; (str = *p_argv) != (char *) 0; p_argv++)
 fprintf (stderr, " %s", str);

      fprintf (stderr, "\n");
    }

  fflush (stdout);
  fflush (stderr);

  pex = pex_init (PEX_USE_PIPES, "collect2", ((void*)0));
  if (pex == ((void*)0))
    fatal_perror ("pex_init failed");

  errmsg = pex_run (pex, 0, nm_file_name, real_nm_argv, ((void*)0), ((void*)0), &err);
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

  int_handler = (void (*) (int)) signal (SIGINT, SIG_IGN);




  inf = pex_read_output (pex, 0);
  if (inf == ((void*)0))
    fatal_perror ("can't open nm output");

  if (debug)
    fprintf (stderr, "\nnm output with constructors/destructors.\n");


  while (fgets (buf, sizeof buf, inf) != (char *) 0)
    {
      int ch, ch2;
      char *name, *end;




      for (p = buf; (ch = *p) != '\0' && ch != '\n' && ch != '_'; p++)
 if (ch == ' ' && p[1] == 'U' && p[2] == ' ')
   break;

      if (ch != '_')
 continue;

      name = p;


      for (end = p; (ch2 = *end) != '\0' && !ISSPACE (ch2) && ch2 != '|';
    end++)
 continue;


      *end = '\0';
      switch (is_ctor_dtor (name))
 {
 case 1:
   if (which_pass != PASS_LIB)
     add_to_list (&constructors, name);
   break;

 case 2:
   if (which_pass != PASS_LIB)
     add_to_list (&destructors, name);
   break;

 case 3:
   if (which_pass != PASS_LIB)
     fatal ("init function found in object %s", prog_name);

   add_to_list (&constructors, name);

   break;

 case 4:
   if (which_pass != PASS_LIB)
     fatal ("fini function found in object %s", prog_name);

   add_to_list (&destructors, name);

   break;

 case 5:
   if (which_pass != PASS_LIB)
     add_to_list (&frame_tables, name);
   break;

 default:
   continue;
 }

      if (debug)
 fprintf (stderr, "\t%s\n", buf);
    }

  if (debug)
    fprintf (stderr, "\n");

  do_wait (nm_file_name, pex);

  signal (SIGINT, int_handler);



}
