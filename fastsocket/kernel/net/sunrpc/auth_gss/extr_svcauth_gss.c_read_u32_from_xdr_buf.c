
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_buf {int dummy; } ;
typedef int __be32 ;


 int ntohl (int ) ;
 int read_bytes_from_xdr_buf (struct xdr_buf*,int,int *,int) ;

__attribute__((used)) static inline int
read_u32_from_xdr_buf(struct xdr_buf *buf, int base, u32 *obj)
{
 __be32 raw;
 int status;

 status = read_bytes_from_xdr_buf(buf, base, &raw, sizeof(*obj));
 if (status)
  return status;
 *obj = ntohl(raw);
 return 0;
}
