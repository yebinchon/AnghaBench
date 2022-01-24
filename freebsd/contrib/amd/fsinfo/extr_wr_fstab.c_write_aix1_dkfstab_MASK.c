#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* d_mountpt; char* d_dev; char* d_fstype; char* d_log; char* d_opts; TYPE_1__* d_host; } ;
typedef  TYPE_2__ disk_fs ;
struct TYPE_4__ {int /*<<< orphan*/  h_hostname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(FILE *ef, disk_fs *dp)
{
  char *hp = FUNC3(dp->d_host->h_hostname);
  char *p = FUNC2(hp, '.');

  if (p)
    *p = '\0';

  FUNC1(ef, "\n%s:\n\tdev = %s\n\tvfs = %s\n\ttype = %s\n\tlog = %s\n\tvol = %s\n\topts = %s\n\tmount = true\n\tcheck = true\n\tfree = false\n",
	  dp->d_mountpt,
	  dp->d_dev,
	  dp->d_fstype,
	  dp->d_fstype,
	  dp->d_log,
	  dp->d_mountpt,
	  dp->d_opts);
  FUNC0(hp);
}