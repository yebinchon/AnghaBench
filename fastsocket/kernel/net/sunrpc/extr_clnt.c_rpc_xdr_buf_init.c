
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_buf {size_t buflen; scalar_t__ len; scalar_t__ flags; scalar_t__ page_len; TYPE_1__* tail; TYPE_2__* head; } ;
struct TYPE_4__ {size_t iov_len; void* iov_base; } ;
struct TYPE_3__ {scalar_t__ iov_len; } ;



__attribute__((used)) static inline void
rpc_xdr_buf_init(struct xdr_buf *buf, void *start, size_t len)
{
 buf->head[0].iov_base = start;
 buf->head[0].iov_len = len;
 buf->tail[0].iov_len = 0;
 buf->page_len = 0;
 buf->flags = 0;
 buf->len = 0;
 buf->buflen = len;
}
