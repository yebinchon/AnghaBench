
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int htonl (int ) ;
 unsigned int ntohl (int ) ;
 int * read_buf (struct xdr_stream*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static __be32 decode_string(struct xdr_stream *xdr, unsigned int *len, const char **str)
{
 __be32 *p;

 p = read_buf(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 *len = ntohl(*p);

 if (*len != 0) {
  p = read_buf(xdr, *len);
  if (unlikely(p == ((void*)0)))
   return htonl(NFS4ERR_RESOURCE);
  *str = (const char *)p;
 } else
  *str = ((void*)0);

 return 0;
}
