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
struct TYPE_3__ {char* opt_rfs; char* opt_sublink; char* opt_fs; int /*<<< orphan*/  opt_rhost; } ;
typedef  TYPE_1__ am_opts ;

/* Variables and functions */
 char* FALSE ; 
 int /*<<< orphan*/  XLOG_USER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,int) ; 
 char* FUNC7 (char*,int) ; 

__attribute__((used)) static char *
FUNC8(am_opts *fo)
{
  char *xmtab;
  char *ptr;
  int len;

  if (!fo->opt_rfs) {
    FUNC2(XLOG_USER, "amfs_nfsx: no remote filesystem specified");
    return FALSE;
  }

  if (!fo->opt_rhost) {
    FUNC2(XLOG_USER, "amfs_nfsx: no remote host specified");
    return FALSE;
  }

  /* set default sublink */
  if (fo->opt_sublink == NULL || fo->opt_sublink[0] == '\0') {
    ptr = FUNC4(fo->opt_rfs, ',');
    if (ptr && ptr > (fo->opt_rfs + 1))
      fo->opt_sublink = FUNC6(fo->opt_rfs + 1, ptr - fo->opt_rfs - 1);
  }

  /*
   * Remove trailing ",..." from ${fs}
   * After deslashifying, overwrite the end of ${fs} with "/"
   * to make sure it is unique.
   */
  if ((ptr = FUNC4(fo->opt_fs, ',')))
    *ptr = '\0';
  FUNC0(fo->opt_fs);

  /*
   * Bump string length to allow trailing /
   */
  len = FUNC5(fo->opt_fs);
  fo->opt_fs = FUNC7(fo->opt_fs, len + 1 + 1);
  ptr = fo->opt_fs + len;

  /*
   * Make unique...
   */
  *ptr++ = '/';
  *ptr = '\0';

  /*
   * Determine magic cookie to put in mtab
   */
  xmtab = FUNC3((char *) NULL, fo->opt_rhost, ":", fo->opt_rfs);
  FUNC1("NFSX: mounting remote server \"%s\", remote fs \"%s\" on \"%s\"",
       fo->opt_rhost, fo->opt_rfs, fo->opt_fs);

  return xmtab;
}