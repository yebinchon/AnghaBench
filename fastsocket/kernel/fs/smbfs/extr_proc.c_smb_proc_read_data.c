
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_request {int rq_rsize; int rq_iovlen; scalar_t__ rq_bytes_recvd; int rq_header; scalar_t__ rq_rlen; TYPE_1__* rq_iov; int rq_page; int rq_buffer; } ;
struct TYPE_2__ {int iov_len; int iov_base; } ;


 scalar_t__ smb_len (int ) ;

__attribute__((used)) static void
smb_proc_read_data(struct smb_request *req)
{
 req->rq_iov[0].iov_base = req->rq_buffer;
 req->rq_iov[0].iov_len = 3;

 req->rq_iov[1].iov_base = req->rq_page;
 req->rq_iov[1].iov_len = req->rq_rsize;
 req->rq_iovlen = 2;

 req->rq_rlen = smb_len(req->rq_header) + 4 - req->rq_bytes_recvd;
}
