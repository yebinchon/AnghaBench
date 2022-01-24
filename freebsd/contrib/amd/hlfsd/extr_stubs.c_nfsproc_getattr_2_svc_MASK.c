#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  uid2home_t ;
typedef  int /*<<< orphan*/  uid ;
struct svc_req {int dummy; } ;
struct TYPE_13__ {scalar_t__ na_uid; scalar_t__ na_fileid; void* na_mtime; void* na_ctime; } ;
struct TYPE_10__ {TYPE_4__ ns_attr_u; } ;
struct TYPE_11__ {void* ns_status; TYPE_1__ ns_u; } ;
typedef  TYPE_2__ nfsattrstat ;
typedef  scalar_t__ gid_t ;
struct TYPE_12__ {int /*<<< orphan*/  fh_data; } ;
typedef  TYPE_3__ am_nfs_fh ;

/* Variables and functions */
 int /*<<< orphan*/  INVALIDID ; 
 void* NFSERR_STALE ; 
 void* NFS_OK ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (char*,long,long) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct svc_req*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ hlfs_gid ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nfsxprt ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  root ; 
 TYPE_4__ rootfattr ; 
 int /*<<< orphan*/  slink ; 
 TYPE_4__ slinkfattr ; 
 int /*<<< orphan*/  started ; 
 void* startup ; 
 TYPE_4__ un_fattr ; 

nfsattrstat *
FUNC6(am_nfs_fh *argp, struct svc_req *rqstp)
{
  static nfsattrstat res;
  uid_t uid = (uid_t) INVALIDID;
  gid_t gid = (gid_t) INVALIDID;

  if (!started) {
    started++;
    rootfattr.na_ctime = startup;
    rootfattr.na_mtime = startup;
    slinkfattr.na_ctime = startup;
    slinkfattr.na_mtime = startup;
    un_fattr.na_ctime = startup;
    un_fattr.na_mtime = startup;
  }

  if (FUNC3(rqstp, &uid, &gid, nfsxprt) < 0) {
    res.ns_status = NFSERR_STALE;
    return &res;
  }
  if (FUNC2(argp, &root)) {
#if 0
    /*
     * XXX: increment mtime of parent directory, causes NFS clients to
     * invalidate their cache for that directory.
     * Some NFS clients may need this code.
     */
    if (uid != rootfattr.na_uid) {
      clocktime(&rootfattr.na_mtime);
      rootfattr.na_uid = uid;
    }
#endif /* 0 */
    res.ns_status = NFS_OK;
    res.ns_u.ns_attr_u = rootfattr;
  } else if (FUNC2(argp, &slink)) {

#ifndef MNT2_NFS_OPT_SYMTTL
    /*
     * This code is needed to defeat Solaris 2.4's (and newer) symlink
     * values cache.  It forces the last-modified time of the symlink to be
     * current.  It is not needed if the O/S has an nfs flag to turn off the
     * symlink-cache at mount time (such as Irix 5.x and 6.x). -Erez.
     *
     * Additionally, Linux currently ignores the nt_useconds field,
     * so we must update the nt_seconds field every time.
     */
    if (uid != slinkfattr.na_uid) {
      FUNC0(&slinkfattr.na_mtime);
      slinkfattr.na_uid = uid;
    }
#endif /* not MNT2_NFS_OPT_SYMTTL */

    res.ns_status = NFS_OK;
    res.ns_u.ns_attr_u = slinkfattr;
  } else {
    if (gid != hlfs_gid) {
      res.ns_status = NFSERR_STALE;
    } else {
      (void)FUNC4(&uid, argp->fh_data, sizeof(uid));
      if (FUNC5(uid) != (uid2home_t *) NULL) {
	res.ns_status = NFS_OK;
	un_fattr.na_fileid = uid;
	res.ns_u.ns_attr_u = un_fattr;
	FUNC1("nfs_getattr: successful search for uid=%ld, gid=%ld",
	     (long) uid, (long) gid);
      } else {			/* not found */
	res.ns_status = NFSERR_STALE;
      }
    }
  }
  return &res;
}