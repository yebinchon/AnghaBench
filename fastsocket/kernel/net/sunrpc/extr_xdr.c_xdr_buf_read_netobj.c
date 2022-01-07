
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_netobj {scalar_t__ len; scalar_t__ data; } ;
struct xdr_buf {scalar_t__ buflen; scalar_t__ len; TYPE_2__* head; TYPE_1__* tail; } ;
struct TYPE_4__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;
struct TYPE_3__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;


 int EFAULT ;
 int ENOMEM ;
 int __read_bytes_from_xdr_buf (struct xdr_buf*,scalar_t__,scalar_t__) ;
 scalar_t__ xdr_buf_subsegment (struct xdr_buf*,struct xdr_buf*,unsigned int,scalar_t__) ;
 scalar_t__ xdr_decode_word (struct xdr_buf*,unsigned int,scalar_t__*) ;

int xdr_buf_read_netobj(struct xdr_buf *buf, struct xdr_netobj *obj, unsigned int offset)
{
 struct xdr_buf subbuf;

 if (xdr_decode_word(buf, offset, &obj->len))
  return -EFAULT;
 if (xdr_buf_subsegment(buf, &subbuf, offset + 4, obj->len))
  return -EFAULT;


 obj->data = subbuf.head[0].iov_base;
 if (subbuf.head[0].iov_len == obj->len)
  return 0;

 obj->data = subbuf.tail[0].iov_base;
 if (subbuf.tail[0].iov_len == obj->len)
  return 0;






 if (obj->len > buf->buflen - buf->len)
  return -ENOMEM;
 if (buf->tail[0].iov_len != 0)
  obj->data = buf->tail[0].iov_base + buf->tail[0].iov_len;
 else
  obj->data = buf->head[0].iov_base + buf->head[0].iov_len;
 __read_bytes_from_xdr_buf(&subbuf, obj->data, obj->len);
 return 0;
}
