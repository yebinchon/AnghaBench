#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pex_obj {int dummy; } ;
typedef  enum pass { ____Placeholder_pass } pass ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* NM_FLAGS ; 
 int PASS_LIB ; 
 int PASS_SECOND ; 
 int /*<<< orphan*/  PEX_USE_PIPES ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 void FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  constructors ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  destructors ; 
 int /*<<< orphan*/  FUNC3 (char*,struct pex_obj*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  frame_tables ; 
 int FUNC9 (char*) ; 
 char* nm_file_name ; 
 struct pex_obj* FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct pex_obj*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (struct pex_obj*,int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,void (*) (int)) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC14 (const char *prog_name, enum pass which_pass)
{
  void (*int_handler) (int);
#ifdef SIGQUIT
  void (*quit_handler) (int);
#endif
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

  /* If we do not have an `nm', complain.  */
  if (nm_file_name == 0)
    FUNC4 ("cannot find 'nm'");

  nm_argv[argc++] = nm_file_name;
  if (NM_FLAGS[0] != '\0')
    nm_argv[argc++] = NM_FLAGS;

  nm_argv[argc++] = prog_name;
  nm_argv[argc++] = (char *) 0;

  /* Trace if needed.  */
  if (vflag)
    {
      const char **p_argv;
      const char *str;

      for (p_argv = &nm_argv[0]; (str = *p_argv) != (char *) 0; p_argv++)
	FUNC8 (stderr, " %s", str);

      FUNC8 (stderr, "\n");
    }

  FUNC6 (stdout);
  FUNC6 (stderr);

  pex = FUNC10 (PEX_USE_PIPES, "collect2", NULL);
  if (pex == NULL)
    FUNC5 ("pex_init failed");

  errmsg = FUNC12 (pex, 0, nm_file_name, real_nm_argv, NULL, NULL, &err);
  if (errmsg != NULL)
    {
      if (err != 0)
	{
	  errno = err;
	  FUNC5 ("%s", errmsg);
	}
      else
	FUNC4 ("%s", errmsg);
    }

  int_handler  = (void (*) (int)) FUNC13 (SIGINT,  SIG_IGN);
#ifdef SIGQUIT
  quit_handler = (void (*) (int)) signal (SIGQUIT, SIG_IGN);
#endif

  inf = FUNC11 (pex, 0);
  if (inf == NULL)
    FUNC5 ("can't open nm output");

  if (debug)
    FUNC8 (stderr, "\nnm output with constructors/destructors.\n");

  /* Read each line of nm output.  */
  while (FUNC7 (buf, sizeof buf, inf) != (char *) 0)
    {
      int ch, ch2;
      char *name, *end;

      /* If it contains a constructor or destructor name, add the name
	 to the appropriate list.  */

      for (p = buf; (ch = *p) != '\0' && ch != '\n' && ch != '_'; p++)
	if (ch == ' ' && p[1] == 'U' && p[2] == ' ')
	  break;

      if (ch != '_')
	continue;

      name = p;
      /* Find the end of the symbol name.
	 Do not include `|', because Encore nm can tack that on the end.  */
      for (end = p; (ch2 = *end) != '\0' && !FUNC0 (ch2) && ch2 != '|';
	   end++)
	continue;


      *end = '\0';
      switch (FUNC9 (name))
	{
	case 1:
	  if (which_pass != PASS_LIB)
	    FUNC2 (&constructors, name);
	  break;

	case 2:
	  if (which_pass != PASS_LIB)
	    FUNC2 (&destructors, name);
	  break;

	case 3:
	  if (which_pass != PASS_LIB)
	    FUNC4 ("init function found in object %s", prog_name);
#ifndef LD_INIT_SWITCH
	  FUNC2 (&constructors, name);
#endif
	  break;

	case 4:
	  if (which_pass != PASS_LIB)
	    FUNC4 ("fini function found in object %s", prog_name);
#ifndef LD_FINI_SWITCH
	  FUNC2 (&destructors, name);
#endif
	  break;

	case 5:
	  if (which_pass != PASS_LIB)
	    FUNC2 (&frame_tables, name);
	  break;

	default:		/* not a constructor or destructor */
	  continue;
	}

      if (debug)
	FUNC8 (stderr, "\t%s\n", buf);
    }

  if (debug)
    FUNC8 (stderr, "\n");

  FUNC3 (nm_file_name, pex);

  FUNC13 (SIGINT,  int_handler);
#ifdef SIGQUIT
  signal (SIGQUIT, quit_handler);
#endif
}