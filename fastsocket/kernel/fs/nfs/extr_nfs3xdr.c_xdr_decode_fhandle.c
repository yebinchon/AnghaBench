
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int size; int data; } ;
typedef int __be32 ;


 int NFS3_FHSIZE ;
 int XDR_QUADLEN (int ) ;
 int memcpy (int ,int *,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static inline __be32 *
xdr_decode_fhandle(__be32 *p, struct nfs_fh *fh)
{
 if ((fh->size = ntohl(*p++)) <= NFS3_FHSIZE) {
  memcpy(fh->data, p, fh->size);
  return p + XDR_QUADLEN(fh->size);
 }
 return ((void*)0);
}
