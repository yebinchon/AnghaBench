
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {int dummy; } ;


 int xdr_shrink_bufhead (struct xdr_buf*,size_t) ;

void
xdr_shift_buf(struct xdr_buf *buf, size_t len)
{
 xdr_shrink_bufhead(buf, len);
}
