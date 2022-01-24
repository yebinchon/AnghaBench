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
struct TYPE_3__ {scalar_t__ opt_fs; scalar_t__ opt_rfs; scalar_t__ opt_rhost; } ;
typedef  TYPE_1__ am_opts ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_USER ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static char *
FUNC5(am_opts *fo)
{
  char *xmtab;
  size_t l;

  if (fo->opt_fs && !fo->opt_rfs)
    fo->opt_rfs = fo->opt_fs;
  if (!fo->opt_rfs) {
    FUNC1(XLOG_USER, "nfs: no remote filesystem specified");
    return NULL;
  }
  if (!fo->opt_rhost) {
    FUNC1(XLOG_USER, "nfs: no remote host specified");
    return NULL;
  }

  /*
   * Determine magic cookie to put in mtab
   */
  l = FUNC2(fo->opt_rhost) + FUNC2(fo->opt_rfs) + 2;
  xmtab = (char *) FUNC3(l);
  FUNC4(xmtab, l, "%s:%s", fo->opt_rhost, fo->opt_rfs);
  FUNC0("NFS: mounting remote server \"%s\", remote fs \"%s\" on \"%s\"",
       fo->opt_rhost, fo->opt_rfs, fo->opt_fs);

  return xmtab;
}