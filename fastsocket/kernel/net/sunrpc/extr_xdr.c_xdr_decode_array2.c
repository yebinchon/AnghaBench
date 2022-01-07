
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {unsigned int len; } ;
struct xdr_array2_desc {int dummy; } ;


 int EINVAL ;
 int xdr_xcode_array2 (struct xdr_buf*,unsigned int,struct xdr_array2_desc*,int ) ;

int
xdr_decode_array2(struct xdr_buf *buf, unsigned int base,
    struct xdr_array2_desc *desc)
{
 if (base >= buf->len)
  return -EINVAL;

 return xdr_xcode_array2(buf, base, desc, 0);
}
