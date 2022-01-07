
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int data; int size; } ;
typedef int __be32 ;


 int NFS2_FHSIZE ;
 int XDR_QUADLEN (int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static inline __be32 *
xdr_decode_fhandle(__be32 *p, struct nfs_fh *fhandle)
{

 fhandle->size = NFS2_FHSIZE;
 memcpy(fhandle->data, p, NFS2_FHSIZE);
 return p + XDR_QUADLEN(NFS2_FHSIZE);
}
