
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateid {int st_access_bmap; struct nfs4_stateid* st_openstp; } ;
typedef int __be32 ;


 int RD_STATE ;
 int WR_STATE ;
 int access_permit_read (int ) ;
 int access_permit_write (int ) ;
 int nfs_ok ;
 int nfserr_openmode ;

__attribute__((used)) static
__be32 nfs4_check_openmode(struct nfs4_stateid *stp, int flags)
{
        __be32 status = nfserr_openmode;


 if (stp->st_openstp)
  stp = stp->st_openstp;
 if ((flags & WR_STATE) && (!access_permit_write(stp->st_access_bmap)))
                goto out;
 if ((flags & RD_STATE) && (!access_permit_read(stp->st_access_bmap)))
                goto out;
 status = nfs_ok;
out:
 return status;
}
