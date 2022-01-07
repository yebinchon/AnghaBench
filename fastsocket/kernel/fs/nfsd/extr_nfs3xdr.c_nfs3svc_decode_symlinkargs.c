
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int page_len; int * pages; struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_arg; int rq_resused; int * rq_respages; } ;
struct nfsd3_symlinkargs {char* tname; unsigned int tlen; int attrs; int flen; int fname; int ffh; } ;
struct kvec {int iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;


 unsigned int NFS3_MAXPATHLEN ;
 unsigned int PAGE_SIZE ;
 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int * decode_sattr3 (int *,int *) ;
 unsigned int ntohl (int ) ;
 char* page_address (int ) ;

int
nfs3svc_decode_symlinkargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_symlinkargs *args)
{
 unsigned int len, avail;
 char *old, *new;
 struct kvec *vec;

 if (!(p = decode_fh(p, &args->ffh)) ||
     !(p = decode_filename(p, &args->fname, &args->flen))
  )
  return 0;
 p = decode_sattr3(p, &args->attrs);






 len = ntohl(*p++);
 if (len == 0 || len > NFS3_MAXPATHLEN || len >= PAGE_SIZE)
  return 0;
 args->tname = new =
  page_address(rqstp->rq_respages[rqstp->rq_resused++]);
 args->tlen = len;

 old = (char*)p;
 vec = &rqstp->rq_arg.head[0];
 avail = vec->iov_len - (old - (char*)vec->iov_base);
 while (len && avail && *old) {
  *new++ = *old++;
  len--;
  avail--;
 }

 if (len && !avail && rqstp->rq_arg.page_len) {
  avail = rqstp->rq_arg.page_len;
  if (avail > PAGE_SIZE)
   avail = PAGE_SIZE;
  old = page_address(rqstp->rq_arg.pages[0]);
 }
 while (len && avail && *old) {
  *new++ = *old++;
  len--;
  avail--;
 }
 *new = '\0';
 if (len)
  return 0;

 return 1;
}
