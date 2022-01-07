
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_handle; } ;
struct TYPE_6__ {int ia_valid; scalar_t__ ia_size; } ;
struct nfsd4_open {int op_truncate; TYPE_3__ op_iattr; TYPE_2__* op_stateowner; int op_cinfo; int op_clientid; } ;
struct nfsd4_change_info {int dummy; } ;
typedef int __be32 ;
struct TYPE_4__ {int rp_openfh; } ;
struct TYPE_5__ {TYPE_1__ so_replay; } ;


 int ATTR_SIZE ;
 int NFSD_MAY_OWNER_OVERRIDE ;
 int do_open_permission (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*,int ) ;
 int fh_copy_shallow (int *,int *) ;
 int memset (int *,int ,int) ;
 int nfs4_check_open_reclaim (int *) ;

__attribute__((used)) static __be32
do_open_fhandle(struct svc_rqst *rqstp, struct svc_fh *current_fh, struct nfsd4_open *open)
{
 __be32 status;


 if ((status = nfs4_check_open_reclaim(&open->op_clientid)))
  return status;





 memset(&open->op_cinfo, 0, sizeof(struct nfsd4_change_info));


 fh_copy_shallow(&open->op_stateowner->so_replay.rp_openfh,
   &current_fh->fh_handle);

 open->op_truncate = (open->op_iattr.ia_valid & ATTR_SIZE) &&
  (open->op_iattr.ia_size == 0);

 status = do_open_permission(rqstp, current_fh, open,
        NFSD_MAY_OWNER_OVERRIDE);

 return status;
}
