
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iov_len; int iov_base; } ;
struct kiocb {int ki_nr_segs; scalar_t__ ki_cur_seg; int ki_left; TYPE_1__* ki_iovec; int ki_buf; TYPE_1__ ki_inline_vec; } ;
typedef int ssize_t ;



__attribute__((used)) static ssize_t aio_setup_single_vector(struct kiocb *kiocb)
{
 kiocb->ki_iovec = &kiocb->ki_inline_vec;
 kiocb->ki_iovec->iov_base = kiocb->ki_buf;
 kiocb->ki_iovec->iov_len = kiocb->ki_left;
 kiocb->ki_nr_segs = 1;
 kiocb->ki_cur_seg = 0;
 return 0;
}
