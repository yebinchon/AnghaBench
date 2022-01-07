
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {unsigned int rq_nvec; int rq_npages; int rq_pagesz; scalar_t__ rq_tailsz; struct kvec* rq_iov; } ;
struct kvec {scalar_t__ iov_len; } ;



__attribute__((used)) static unsigned long
rqst_len(struct smb_rqst *rqst)
{
 unsigned int i;
 struct kvec *iov = rqst->rq_iov;
 unsigned long buflen = 0;


 for (i = 0; i < rqst->rq_nvec; i++)
  buflen += iov[i].iov_len;


 if (rqst->rq_npages) {
  buflen += rqst->rq_pagesz * (rqst->rq_npages - 1);
  buflen += rqst->rq_tailsz;
 }

 return buflen;
}
