
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int data; } ;
typedef int __be32 ;


 int NFS2_FHSIZE ;
 int XDR_QUADLEN (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static inline __be32 *
xdr_encode_fhandle(__be32 *p, const struct nfs_fh *fhandle)
{
 memcpy(p, fhandle->data, NFS2_FHSIZE);
 return p + XDR_QUADLEN(NFS2_FHSIZE);
}
