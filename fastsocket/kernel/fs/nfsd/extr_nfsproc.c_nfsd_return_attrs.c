
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fh_dentry; TYPE_2__* fh_export; } ;
struct nfsd_attrstat {int stat; TYPE_3__ fh; } ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {int mnt; } ;
struct TYPE_5__ {TYPE_1__ ex_path; } ;


 scalar_t__ nfserrno (int ) ;
 int vfs_getattr (int ,int ,int *) ;

__attribute__((used)) static __be32
nfsd_return_attrs(__be32 err, struct nfsd_attrstat *resp)
{
 if (err) return err;
 return nfserrno(vfs_getattr(resp->fh.fh_export->ex_path.mnt,
        resp->fh.fh_dentry,
        &resp->stat));
}
