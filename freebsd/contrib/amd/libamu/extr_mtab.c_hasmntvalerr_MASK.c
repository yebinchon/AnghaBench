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
typedef  int /*<<< orphan*/  mntent_t ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_MAP ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 long FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 

unsigned int
FUNC4(mntent_t *mnt, char *opt, int *valp)
{
  char *str = FUNC0(mnt, opt);
  int err = 1;		     /* 1 means no good value was set (an error) */
  char *eq, *endptr;
  long int i;

  /* exit if no option specificed */
  if (!str) {
    goto out;
  }

  eq = FUNC1(mnt, opt);

  if (!eq) {		  /* no argument to option ('=' sign was missing) */
    FUNC2(XLOG_MAP, "numeric option to \"%s\" missing", opt);
    goto out;
  }

  /* if got here, then we had an '=' after option name */
  endptr = NULL;
  i = FUNC3(eq, &endptr, 0); /* hex and octal allowed ;-) */
  if (!endptr ||
      (endptr != eq && (*endptr == ',' || *endptr == '\0'))) {
      /*
       * endptr set means strtol saw a non-digit.  If the non-digit is a
       * comma, it's probably the start of the next option.  If the comma is
       * the first char though, complain about it (foo=,bar is made
       * noticeable by this).
       *
       * Similar reasoning for '\0' instead of comma, it's the end of the
       * string.
       */
    *valp = (int) i;		/* set good value */
    err = 0;			/* no error */
  } else {
    /* whatever was after the '=' sign wasn't a number */
    FUNC2(XLOG_MAP, "invalid numeric option in \"%s\": \"%s\"", opt, str);
    /* fall through to error/exit processing */
  }

 out:
  return err;
}