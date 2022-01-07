
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_link {int li_cinfo; int li_namelen; int li_name; } ;
struct TYPE_2__ {int fh_dentry; } ;
struct nfsd4_compound_state {int current_fh; TYPE_1__ save_fh; } ;
typedef int __be32 ;


 int nfsd_link (struct svc_rqst*,int *,int ,int ,TYPE_1__*) ;
 int nfserr_nofilehandle ;
 int set_change_info (int *,int *) ;

__attribute__((used)) static __be32
nfsd4_link(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    struct nfsd4_link *link)
{
 __be32 status = nfserr_nofilehandle;

 if (!cstate->save_fh.fh_dentry)
  return status;
 status = nfsd_link(rqstp, &cstate->current_fh,
      link->li_name, link->li_namelen, &cstate->save_fh);
 if (!status)
  set_change_info(&link->li_cinfo, &cstate->current_fh);
 return status;
}
