
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct svc_fh {TYPE_2__* fh_dentry; } ;
typedef int __be32 ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int nfs_ok ;
 int nfserr_isdir ;
 int nfserr_symlink ;

__attribute__((used)) static __be32 nfsd_check_obj_isreg(struct svc_fh *fh)
{
 umode_t mode = fh->fh_dentry->d_inode->i_mode;

 if (S_ISREG(mode))
  return nfs_ok;
 if (S_ISDIR(mode))
  return nfserr_isdir;







 return nfserr_symlink;
}
