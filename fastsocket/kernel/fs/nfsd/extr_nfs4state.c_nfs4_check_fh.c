
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_fh {TYPE_1__* fh_dentry; } ;
struct nfs4_stateid {TYPE_2__* st_file; } ;
struct TYPE_4__ {scalar_t__ fi_inode; } ;
struct TYPE_3__ {scalar_t__ d_inode; } ;



__attribute__((used)) static inline int
nfs4_check_fh(struct svc_fh *fhp, struct nfs4_stateid *stp)
{
 return fhp->fh_dentry->d_inode != stp->st_file->fi_inode;
}
