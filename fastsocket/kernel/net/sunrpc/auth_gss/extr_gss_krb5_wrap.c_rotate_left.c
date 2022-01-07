
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_buf {scalar_t__ len; } ;


 int _rotate_left (struct xdr_buf*,unsigned int) ;
 int xdr_buf_subsegment (struct xdr_buf*,struct xdr_buf*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void rotate_left(u32 base, struct xdr_buf *buf, unsigned int shift)
{
 struct xdr_buf subbuf;

 xdr_buf_subsegment(buf, &subbuf, base, buf->len - base);
 _rotate_left(&subbuf, shift);
}
