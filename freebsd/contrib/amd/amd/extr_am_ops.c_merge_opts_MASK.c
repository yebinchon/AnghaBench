#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oneopt ;
struct TYPE_3__ {char* mnt_opts; } ;
typedef  TYPE_1__ mntent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char*,char*) ; 
 char* FUNC6 (size_t) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 

__attribute__((used)) static char *
FUNC10(const char *opts1, const char *opts2)
{
  mntent_t mnt2;		/* place holder for opts2 */
  char *newstr;			/* new string to return (malloc'ed) */
  char *tmpstr;			/* temp */
  char *eq;			/* pointer to whatever follows '=' within temp */
  char oneopt[80];		/* one option w/o value if any */
  char *revoneopt;		/* reverse of oneopt */
  size_t len = FUNC4(opts1) + FUNC4(opts2) + 2; /* space for "," and NULL */
  char *s1 = FUNC7(opts1);	/* copy of opts1 to munge */

  /* initialization */
  mnt2.mnt_opts = (char *) opts2;
  newstr = FUNC6(len);
  newstr[0] = '\0';

  for (tmpstr = FUNC5(s1, ",");
       tmpstr;
       tmpstr = FUNC5(NULL, ",")) {
    /* copy option to temp buffer */
    FUNC9(oneopt, tmpstr, sizeof(oneopt));
    /* if option has a value such as rsize=1024, chop the value part */
    if ((eq = FUNC3(oneopt, '=')))
      *eq = '\0';
    /* find reverse option of oneopt */
    revoneopt = FUNC2(oneopt);
    /* if option or its reverse exist in opts2, ignore it */
    if (FUNC1(&mnt2, oneopt) || FUNC1(&mnt2, revoneopt))
      continue;
    /* add option to returned string */
    if (newstr[0]) {
      FUNC8(newstr, ",", len);
      FUNC8(newstr, tmpstr, len);
    } else {
      FUNC9(newstr, tmpstr, len);
    }
  }

  /* finally, append opts2 itself */
  if (newstr[0]) {
    FUNC8(newstr, ",", len);
    FUNC8(newstr, opts2, len);
  } else {
    FUNC9(newstr, opts2, len);
  }

  FUNC0(s1);
  return newstr;
}