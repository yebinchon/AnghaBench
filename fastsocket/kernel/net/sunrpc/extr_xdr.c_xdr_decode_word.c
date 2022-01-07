
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_buf {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int read_bytes_from_xdr_buf (struct xdr_buf*,unsigned int,int *,int) ;

int
xdr_decode_word(struct xdr_buf *buf, unsigned int base, u32 *obj)
{
 __be32 raw;
 int status;

 status = read_bytes_from_xdr_buf(buf, base, &raw, sizeof(*obj));
 if (status)
  return status;
 *obj = be32_to_cpu(raw);
 return 0;
}
