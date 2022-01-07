
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int rq_npages; int rq_pagesz; int rq_tailsz; int * rq_pages; } ;
struct kvec {int iov_len; int iov_base; } ;


 int kmap (int ) ;

void
cifs_rqst_page_to_kvec(struct smb_rqst *rqst, unsigned int idx,
   struct kvec *iov)
{
 iov->iov_base = kmap(rqst->rq_pages[idx]);


 if (idx == (rqst->rq_npages - 1))
  iov->iov_len = rqst->rq_tailsz;
 else
  iov->iov_len = rqst->rq_pagesz;
}
