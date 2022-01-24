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

/* Variables and functions */
 int PEX_LAST ; 
 int PEX_SEARCH ; 
 scalar_t__ debug ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 struct pex_obj* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct pex_obj*,int,char*,char**,char const*,char const*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ vflag ; 

struct pex_obj *
FUNC7 (const char *prog, char **argv, const char *outname,
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
	FUNC3 (stderr, "%s", argv[0]);
      else
	FUNC4 ("[cannot find %s]", prog);

      for (p_argv = &argv[1]; (str = *p_argv) != (char *) 0; p_argv++)
	FUNC3 (stderr, " %s", str);

      FUNC3 (stderr, "\n");
    }

  FUNC2 (stdout);
  FUNC2 (stderr);

  /* If we cannot find a program we need, complain error.  Do this here
     since we might not end up needing something that we could not find.  */

  if (argv[0] == 0)
    FUNC0 ("cannot find '%s'", prog);

  pex = FUNC5 (0, "collect2", NULL);
  if (pex == NULL)
    FUNC1 ("pex_init failed");

  errmsg = FUNC6 (pex, PEX_LAST | PEX_SEARCH, argv[0], argv, outname,
		    errname, &err);
  if (errmsg != NULL)
    {
      if (err != 0)
	{
	  errno = err;
	  FUNC1 ("%s", errmsg);
	}
      else
	FUNC0 ("%s", errmsg);
    }

  return pex;
}