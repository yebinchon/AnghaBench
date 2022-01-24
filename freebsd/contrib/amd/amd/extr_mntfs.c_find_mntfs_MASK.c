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
typedef  int /*<<< orphan*/  mntfs ;
typedef  int /*<<< orphan*/  am_opts ;
typedef  int /*<<< orphan*/  am_ops ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,char*,char*) ; 

mntfs *
FUNC2(am_ops *ops, am_opts *mo, char *mp, char *info, char *auto_opts, char *mopts, char *remopts)
{
  mntfs *mf = FUNC1(ops, mo, mp, info, auto_opts, mopts, remopts);
  if (mf)
    return mf;

  return FUNC0(ops, mo, mp, info, auto_opts, mopts, remopts);
}