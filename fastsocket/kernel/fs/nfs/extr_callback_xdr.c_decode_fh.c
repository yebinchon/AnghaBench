
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int * data; } ;
typedef int __be32 ;


 int NFS4ERR_BADHANDLE ;
 int NFS4ERR_RESOURCE ;
 int NFS4_FHSIZE ;
 int htonl (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int ntohl (int ) ;
 int * read_buf (struct xdr_stream*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static __be32 decode_fh(struct xdr_stream *xdr, struct nfs_fh *fh)
{
 __be32 *p;

 p = read_buf(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 fh->size = ntohl(*p);
 if (fh->size > NFS4_FHSIZE)
  return htonl(NFS4ERR_BADHANDLE);
 p = read_buf(xdr, fh->size);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 memcpy(&fh->data[0], p, fh->size);
 memset(&fh->data[fh->size], 0, sizeof(fh->data) - fh->size);
 return 0;
}
