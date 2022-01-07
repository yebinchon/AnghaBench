
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int uid2home_t ;
typedef int uid ;
struct svc_req {int dummy; } ;
struct TYPE_13__ {scalar_t__ na_uid; scalar_t__ na_fileid; void* na_mtime; void* na_ctime; } ;
struct TYPE_10__ {TYPE_4__ ns_attr_u; } ;
struct TYPE_11__ {void* ns_status; TYPE_1__ ns_u; } ;
typedef TYPE_2__ nfsattrstat ;
typedef scalar_t__ gid_t ;
struct TYPE_12__ {int fh_data; } ;
typedef TYPE_3__ am_nfs_fh ;


 int INVALIDID ;
 void* NFSERR_STALE ;
 void* NFS_OK ;
 int clocktime (void**) ;
 int dlog (char*,long,long) ;
 scalar_t__ eq_fh (TYPE_3__*,int *) ;
 scalar_t__ getcreds (struct svc_req*,scalar_t__*,scalar_t__*,int ) ;
 scalar_t__ hlfs_gid ;
 int memcpy (scalar_t__*,int ,int) ;
 int nfsxprt ;
 int * plt_search (scalar_t__) ;
 int root ;
 TYPE_4__ rootfattr ;
 int slink ;
 TYPE_4__ slinkfattr ;
 int started ;
 void* startup ;
 TYPE_4__ un_fattr ;

nfsattrstat *
nfsproc_getattr_2_svc(am_nfs_fh *argp, struct svc_req *rqstp)
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

  if (getcreds(rqstp, &uid, &gid, nfsxprt) < 0) {
    res.ns_status = NFSERR_STALE;
    return &res;
  }
  if (eq_fh(argp, &root)) {
    res.ns_status = NFS_OK;
    res.ns_u.ns_attr_u = rootfattr;
  } else if (eq_fh(argp, &slink)) {
    if (uid != slinkfattr.na_uid) {
      clocktime(&slinkfattr.na_mtime);
      slinkfattr.na_uid = uid;
    }


    res.ns_status = NFS_OK;
    res.ns_u.ns_attr_u = slinkfattr;
  } else {
    if (gid != hlfs_gid) {
      res.ns_status = NFSERR_STALE;
    } else {
      (void)memcpy(&uid, argp->fh_data, sizeof(uid));
      if (plt_search(uid) != (uid2home_t *) ((void*)0)) {
 res.ns_status = NFS_OK;
 un_fattr.na_fileid = uid;
 res.ns_u.ns_attr_u = un_fattr;
 dlog("nfs_getattr: successful search for uid=%ld, gid=%ld",
      (long) uid, (long) gid);
      } else {
 res.ns_status = NFSERR_STALE;
      }
    }
  }
  return &res;
}
