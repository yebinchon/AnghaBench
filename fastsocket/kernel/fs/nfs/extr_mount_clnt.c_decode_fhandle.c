
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fh {int data; int size; } ;
struct mountres {struct nfs_fh* fh; } ;
typedef int __be32 ;


 int EIO ;
 int NFS2_FHSIZE ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_fhandle(struct xdr_stream *xdr, struct mountres *res)
{
 struct nfs_fh *fh = res->fh;
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS2_FHSIZE);
 if (unlikely(p == ((void*)0)))
  return -EIO;

 fh->size = NFS2_FHSIZE;
 memcpy(fh->data, p, NFS2_FHSIZE);
 return 0;
}
