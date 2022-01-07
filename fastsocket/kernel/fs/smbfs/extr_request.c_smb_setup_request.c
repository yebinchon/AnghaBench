
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_request {int rq_slen; int * rq_trans2buffer; scalar_t__ rq_fragment; scalar_t__ rq_errno; scalar_t__ rq_err; scalar_t__ rq_rcls; scalar_t__ rq_bytes_sent; int rq_setup_read; scalar_t__ rq_resp_bcc; int rq_header; } ;


 int kfree (int *) ;
 int smb_len (int ) ;
 int smb_setup_bcc ;

__attribute__((used)) static int smb_setup_request(struct smb_request *req)
{
 int len = smb_len(req->rq_header) + 4;
 req->rq_slen = len;


 if (req->rq_resp_bcc)
  req->rq_setup_read = smb_setup_bcc;


 req->rq_bytes_sent = 0;
 req->rq_rcls = 0;
 req->rq_err = 0;
 req->rq_errno = 0;
 req->rq_fragment = 0;
 kfree(req->rq_trans2buffer);
 req->rq_trans2buffer = ((void*)0);

 return 0;
}
