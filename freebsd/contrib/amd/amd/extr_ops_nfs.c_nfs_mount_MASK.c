#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mf_info; int /*<<< orphan*/  mf_mount; scalar_t__ mf_private; int /*<<< orphan*/ * mf_mopts; TYPE_1__* mf_server; } ;
typedef  TYPE_2__ mntfs ;
struct TYPE_11__ {int /*<<< orphan*/ * mnt_opts; } ;
typedef  TYPE_3__ mntent_t ;
struct TYPE_12__ {int /*<<< orphan*/  am_flags; } ;
typedef  TYPE_4__ am_node ;
typedef  int /*<<< orphan*/  am_nfs_handle_t ;
struct TYPE_9__ {int fs_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMF_SOFTLOOKUP ; 
 int EINVAL ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 scalar_t__ FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(am_node *am, mntfs *mf)
{
  int error = 0;
  mntent_t mnt;

  if (!mf->mf_private && mf->mf_server->fs_version != 4) {
    FUNC3(XLOG_ERROR, "Missing filehandle for %s", mf->mf_info);
    return EINVAL;
  }

  if (mf->mf_mopts == NULL) {
    FUNC3(XLOG_ERROR, "Missing mount options for %s", mf->mf_info);
    return EINVAL;
  }

  mnt.mnt_opts = mf->mf_mopts;
  if (FUNC0(&mnt, "softlookup") ||
      (FUNC0(&mnt, "soft") && !FUNC0(&mnt, "nosoftlookup")))
    am->am_flags |= AMF_SOFTLOOKUP;

  error = FUNC2((am_nfs_handle_t *) mf->mf_private,
		       mf->mf_mount,
		       mf->mf_info,
		       mf);

  if (error) {
    errno = error;
    FUNC1("mount_nfs: %m");
  }

  return error;
}