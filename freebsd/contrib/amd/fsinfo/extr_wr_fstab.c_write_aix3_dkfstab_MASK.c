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
struct TYPE_3__ {char* d_fstype; char* d_dev; char* d_log; char* d_mountpt; char* d_opts; } ;
typedef  TYPE_1__ disk_fs ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC4(FILE *ef, disk_fs *dp)
{
  if (FUNC1(dp->d_fstype, "jfs") &&
      FUNC0(dp->d_dev, "/dev/", 5) &&
      !dp->d_log)
    FUNC2("aix 3 needs a log device for journalled filesystem (jfs) mounts");

  FUNC3(ef, "\n%s:\n\tdev = %s\n\tvfs = %s\n\ttype = %s\n\tlog = %s\n\tvol = %s\n\topts = %s\n\tmount = true\n\tcheck = true\n\tfree = false\n",
	  dp->d_mountpt,
	  dp->d_dev,
	  dp->d_fstype,
	  dp->d_fstype,
	  dp->d_log,
	  dp->d_mountpt,
	  dp->d_opts);
}