
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_rename {int rn_tinfo; int rn_sinfo; int rn_tnamelen; int rn_tname; int rn_snamelen; int rn_sname; } ;
struct TYPE_10__ {TYPE_3__* fh_dentry; TYPE_1__* fh_export; } ;
struct nfsd4_compound_state {TYPE_4__ save_fh; TYPE_4__ current_fh; } ;
typedef scalar_t__ __be32 ;
struct TYPE_9__ {TYPE_2__* d_inode; } ;
struct TYPE_8__ {int i_mode; } ;
struct TYPE_7__ {int ex_flags; } ;


 int NFSEXP_NOSUBTREECHECK ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ locks_in_grace () ;
 scalar_t__ nfsd_rename (struct svc_rqst*,TYPE_4__*,int ,int ,TYPE_4__*,int ,int ) ;
 scalar_t__ nfserr_exist ;
 scalar_t__ nfserr_grace ;
 scalar_t__ nfserr_isdir ;
 scalar_t__ nfserr_nofilehandle ;
 scalar_t__ nfserr_notdir ;
 scalar_t__ nfserr_symlink ;
 int set_change_info (int *,TYPE_4__*) ;

__attribute__((used)) static __be32
nfsd4_rename(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
      struct nfsd4_rename *rename)
{
 __be32 status = nfserr_nofilehandle;

 if (!cstate->save_fh.fh_dentry)
  return status;
 if (locks_in_grace() && !(cstate->save_fh.fh_export->ex_flags
     & NFSEXP_NOSUBTREECHECK))
  return nfserr_grace;
 status = nfsd_rename(rqstp, &cstate->save_fh, rename->rn_sname,
        rename->rn_snamelen, &cstate->current_fh,
        rename->rn_tname, rename->rn_tnamelen);



 if (status == nfserr_isdir)
  status = nfserr_exist;
 else if ((status == nfserr_notdir) &&
                  (S_ISDIR(cstate->save_fh.fh_dentry->d_inode->i_mode) &&
                   S_ISDIR(cstate->current_fh.fh_dentry->d_inode->i_mode)))
  status = nfserr_exist;
 else if (status == nfserr_symlink)
  status = nfserr_notdir;

 if (!status) {
  set_change_info(&rename->rn_sinfo, &cstate->current_fh);
  set_change_info(&rename->rn_tinfo, &cstate->save_fh);
 }
 return status;
}
