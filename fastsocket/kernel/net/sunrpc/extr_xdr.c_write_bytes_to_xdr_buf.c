
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {int dummy; } ;


 int __write_bytes_to_xdr_buf (struct xdr_buf*,void*,unsigned int) ;
 int xdr_buf_subsegment (struct xdr_buf*,struct xdr_buf*,unsigned int,unsigned int) ;

int write_bytes_to_xdr_buf(struct xdr_buf *buf, unsigned int base, void *obj, unsigned int len)
{
 struct xdr_buf subbuf;
 int status;

 status = xdr_buf_subsegment(buf, &subbuf, base, len);
 if (status != 0)
  return status;
 __write_bytes_to_xdr_buf(&subbuf, obj, len);
 return 0;
}
