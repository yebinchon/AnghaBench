#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  voidp ;
typedef  long u_short ;
struct TYPE_6__ {TYPE_2__* mnt; struct TYPE_6__* mnext; } ;
typedef  TYPE_1__ mntlist ;
struct TYPE_7__ {long mnt_fsname; long mnt_dir; int /*<<< orphan*/  mnt_type; } ;
typedef  TYPE_2__ mntent_t ;
typedef  int /*<<< orphan*/  am_ops ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  MNTTAB_TYPE_NFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_WARNING ; 
 int /*<<< orphan*/  amfs_link_ops ; 
 int /*<<< orphan*/  amfs_toplvl_ops ; 
 scalar_t__ FUNC1 (int*,long*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mnttab_file_name ; 
 int /*<<< orphan*/  nfs_dispatcher ; 
 long nfs_port ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,char*,long*) ; 
 char* FUNC10 (long,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

void
FUNC12(void)
{
  mntlist *ml, *mlp;
  /* reasonably sized list of restarted nfs ports */
  u_short old_ports[256];

  FUNC5((voidp) &old_ports, 0, sizeof(u_short) * 256);

  /*
   * Read the existing mount table.  For each entry, find nfs, ufs or auto
   * mounts and create a partial am_node to represent it.
   */
  for (mlp = ml = FUNC7("restart", mnttab_file_name);
       mlp;
       mlp = mlp->mnext) {
    mntent_t *me = mlp->mnt;
    am_ops *fs_ops = NULL;
    char *colon;
    long pid;
    u_short port;
    int err;

    if (!FUNC0(me->mnt_type, MNTTAB_TYPE_NFS))
      continue;			/* to next mlp */
    /*
     * NFS entry, or possibly an Amd entry...
     * The mnt_fsname for daemon mount points is
     *	   host:(pidXXX)
     * or (seen on Solaris)
     *     host:daemon(pidXXX)
     */
    colon = FUNC10(me->mnt_fsname, ':');
    if (!colon || !FUNC11(colon, "(pid"))
      continue;
    /* if got here, then we matched an existing Amd mount point */
    err = 1;

    FUNC6(XLOG_WARNING, "%s is an existing automount point", me->mnt_dir);

    /* Is the old automounter still alive? */
    if (FUNC9(colon, "%*[^(](pid%ld%*[,)]", &pid) != 1) {
      FUNC6(XLOG_WARNING, "Can't parse pid in %s", me->mnt_fsname);
      goto give_up;
    }
    if (FUNC4(pid, 0) != -1 || errno != ESRCH) {
      FUNC6(XLOG_WARNING, "Automounter (pid: %ld) still alive", pid);
      goto give_up;
    }

    /*
     * Do we have a map for this mount point?  Who cares, we'll restart
     * anyway -- getting ESTALE is way better than hanging.
     */

    /* Can we restart it? Only if it tells us what port it was using... */
    if (FUNC9(colon, "%*[^,],port%hu)", &port) != 1) {
      FUNC6(XLOG_WARNING, "No port specified for %s", me->mnt_fsname);
      goto give_up;
    }

    /* Maybe we already own that port... */
    if (port != nfs_port) {
      int i;
      for (i = 0; i < 256; i++) {
	if (old_ports[i] == port ||
	    old_ports[i] == 0)
	  break;
      }
      if (i == 256) {
	FUNC6(XLOG_WARNING, "Too many open ports (256)");
	goto give_up;
      }

      if (old_ports[i] == 0) {
	int soNFS;
	SVCXPRT *nfsxprt;
	if (FUNC1(&soNFS, &port, &nfsxprt, nfs_dispatcher,
	    FUNC3(nfs_dispatcher)) != 0) {
	  FUNC6(XLOG_WARNING, "Can't bind to port %u", port);
	  goto give_up;
	}
	old_ports[i] = nfs_port = port;
      }
    }
    err = 0;

  give_up:
    if (err) {
      FUNC6(XLOG_WARNING, "Can't restart %s, leaving it alone", me->mnt_dir);
      fs_ops = &amfs_link_ops;
    } else {
      fs_ops = &amfs_toplvl_ops;
    }

    FUNC8(me, fs_ops);
  } /* end of "for (mlp" */

  /* free the mount list */
  FUNC2(ml);
}