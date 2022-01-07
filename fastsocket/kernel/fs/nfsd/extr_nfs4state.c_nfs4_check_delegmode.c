
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {scalar_t__ dl_type; } ;
typedef int __be32 ;


 scalar_t__ NFS4_OPEN_DELEGATE_READ ;
 int WR_STATE ;
 int nfs_ok ;
 int nfserr_openmode ;

__attribute__((used)) static inline __be32
nfs4_check_delegmode(struct nfs4_delegation *dp, int flags)
{
 if ((flags & WR_STATE) && (dp->dl_type == NFS4_OPEN_DELEGATE_READ))
  return nfserr_openmode;
 else
  return nfs_ok;
}
