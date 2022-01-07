
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int current_fh; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct nfsd4_commit {int co_count; int co_offset; TYPE_1__ co_verf; } ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {int tv_usec; int tv_sec; } ;


 scalar_t__ nfsd_commit (struct svc_rqst*,int *,int ,int ) ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserr_symlink ;
 TYPE_2__ nfssvc_boot ;

__attribute__((used)) static __be32
nfsd4_commit(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      struct nfsd4_commit *commit)
{
 __be32 status;

 u32 *p = (u32 *)commit->co_verf.data;
 *p++ = nfssvc_boot.tv_sec;
 *p++ = nfssvc_boot.tv_usec;

 status = nfsd_commit(rqstp, &cstate->current_fh, commit->co_offset,
        commit->co_count);
 if (status == nfserr_symlink)
  status = nfserr_inval;
 return status;
}
