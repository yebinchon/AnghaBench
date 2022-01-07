
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_request {scalar_t__ rq_rlen; scalar_t__ rq_bytes_recvd; scalar_t__ rq_bufsize; int rq_iovlen; TYPE_1__* rq_iov; int rq_buffer; int rq_header; } ;
struct TYPE_2__ {scalar_t__ iov_len; int iov_base; } ;


 int ENOBUFS ;
 int PARANOIA (char*,scalar_t__,scalar_t__) ;
 scalar_t__ smb_len (int ) ;

__attribute__((used)) static int smb_setup_bcc(struct smb_request *req)
{
 int result = 0;
 req->rq_rlen = smb_len(req->rq_header) + 4 - req->rq_bytes_recvd;

 if (req->rq_rlen > req->rq_bufsize) {
  PARANOIA("Packet too large %d > %d\n",
    req->rq_rlen, req->rq_bufsize);
  return -ENOBUFS;
 }

 req->rq_iov[0].iov_base = req->rq_buffer;
 req->rq_iov[0].iov_len = req->rq_rlen;
 req->rq_iovlen = 1;

 return result;
}
