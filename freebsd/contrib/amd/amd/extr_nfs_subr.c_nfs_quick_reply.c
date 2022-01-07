
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ xdrproc_t ;
struct TYPE_9__ {int drok_attributes; int drok_fhandle; } ;
struct TYPE_10__ {TYPE_1__ dr_drok_u; } ;
struct TYPE_13__ {int dr_status; TYPE_2__ dr_u; } ;
typedef TYPE_5__ nfsdiropres ;
struct TYPE_14__ {TYPE_4__* am_al; int * am_transp; int am_fattr; } ;
typedef TYPE_6__ am_node ;
typedef int XDRPROC_T_TYPE ;
struct TYPE_12__ {TYPE_3__* al_mnt; } ;
struct TYPE_11__ {int mf_mount; } ;
typedef int SVC_IN_ARG_TYPE ;
typedef int SVCXPRT ;


 int NFS_OK ;
 int XFREE (int *) ;
 int dlog (char*,int ) ;
 int mp_to_fh (TYPE_6__*,int *) ;
 int nfs_error (int) ;
 int svc_sendreply (int *,int ,int ) ;
 int svcerr_systemerr (int *) ;
 int xdr_diropres ;

void
nfs_quick_reply(am_node *mp, int error)
{
  SVCXPRT *transp = mp->am_transp;
  nfsdiropres res;
  xdrproc_t xdr_result = (xdrproc_t) xdr_diropres;





  if (transp) {
    if (error == 0) {




      mp_to_fh(mp, &res.dr_u.dr_drok_u.drok_fhandle);
      res.dr_u.dr_drok_u.drok_attributes = mp->am_fattr;
      res.dr_status = NFS_OK;
    } else



      res.dr_status = nfs_error(error);




    if (!svc_sendreply(transp, (XDRPROC_T_TYPE) xdr_result, (SVC_IN_ARG_TYPE) & res))
      svcerr_systemerr(transp);




    XFREE(mp->am_transp);
    dlog("Quick reply sent for %s", mp->am_al->al_mnt->mf_mount);
  }
}
