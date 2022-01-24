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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  mntfs ;
typedef  int /*<<< orphan*/  am_nfs_handle_t ;

/* Variables and functions */
 int ENOENT ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC5(am_nfs_handle_t *fhp, char *mntdir, char *fs_name, mntfs *mf)
{
  struct stat stb;

  FUNC0("amfs_host: mounting fs %s on %s\n", fs_name, mntdir);

  (void) FUNC1(mntdir, 0555);
  if (FUNC4(mntdir, &stb) < 0 || (stb.st_mode & S_IFMT) != S_IFDIR) {
    FUNC3(XLOG_ERROR, "No mount point for %s - skipping", mntdir);
    return ENOENT;
  }

  return FUNC2(fhp, mntdir, fs_name, mf);
}