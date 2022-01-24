#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;
typedef  int /*<<< orphan*/  AUTH_CREATE_GIDLIST_TYPE ;

/* Variables and functions */
 int CFM_FULLY_QUALIFIED_HOSTS ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  hostd ; 
 int /*<<< orphan*/  nfs_auth ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(void)
{
  AUTH_CREATE_GIDLIST_TYPE group_wheel = 0;

  /* Some NFS mounts (particularly cross-domain) require FQDNs to succeed */

#ifdef HAVE_TRANSPORT_TYPE_TLI
  if (gopt.flags & CFM_FULLY_QUALIFIED_HOSTS) {
    plog(XLOG_INFO, "Using NFS auth for FQHN \"%s\"", hostd);
    nfs_auth = authsys_create(hostd, 0, 0, 1, &group_wheel);
  } else {
    nfs_auth = authsys_create_default();
  }
#else /* not HAVE_TRANSPORT_TYPE_TLI */
  if (gopt.flags & CFM_FULLY_QUALIFIED_HOSTS) {
    FUNC4(XLOG_INFO, "Using NFS auth for FQHN \"%s\"", hostd);
    nfs_auth = FUNC2(hostd, 0, 0, 1, &group_wheel);
  } else {
    nfs_auth = FUNC3();
  }
#endif /* not HAVE_TRANSPORT_TYPE_TLI */

  if (!nfs_auth)
    return ENOBUFS;

  return 0;
}