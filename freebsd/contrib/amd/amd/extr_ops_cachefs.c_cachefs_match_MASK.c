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
struct TYPE_3__ {int /*<<< orphan*/  opt_cachedir; int /*<<< orphan*/  opt_fs; int /*<<< orphan*/  opt_rfs; } ;
typedef  TYPE_1__ am_opts ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_USER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(am_opts *fo)
{
  /* sanity check */
  if (!fo->opt_rfs || !fo->opt_fs || !fo->opt_cachedir) {
    FUNC1(XLOG_USER, "cachefs: must specify cachedir, rfs, and fs");
    return NULL;
  }

  FUNC0("CACHEFS: using cache directory \"%s\"", fo->opt_cachedir);

  /* determine magic cookie to put in mtab */
  return FUNC2(fo->opt_cachedir);
}