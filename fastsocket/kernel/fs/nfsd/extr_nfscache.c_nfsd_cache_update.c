
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvec* head; } ;
struct svc_rqst {int rq_secure; TYPE_1__ rq_res; struct svc_cacherep* rq_cacherep; } ;
struct kvec {int iov_len; scalar_t__ iov_base; } ;
struct svc_cacherep {int c_type; int c_state; int c_secure; struct kvec c_replvec; int c_replstat; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 int RC_DONE ;



 int cache_lock ;
 size_t drc_mem_usage ;
 scalar_t__ kmalloc (size_t,int ) ;
 int lru_put_end (struct svc_cacherep*) ;
 int memcpy (scalar_t__,int *,size_t) ;
 int nfsd_reply_cache_free (struct svc_cacherep*) ;
 int printk (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
nfsd_cache_update(struct svc_rqst *rqstp, int cachetype, __be32 *statp)
{
 struct svc_cacherep *rp = rqstp->rq_cacherep;
 struct kvec *resv = &rqstp->rq_res.head[0], *cachv;
 int len;
 size_t bufsize = 0;

 if (!rp)
  return;

 len = resv->iov_len - ((char*)statp - (char*)resv->iov_base);
 len >>= 2;


 if (!statp || len > (256 >> 2)) {
  nfsd_reply_cache_free(rp);
  return;
 }

 switch (cachetype) {
 case 128:
  if (len != 1)
   printk("nfsd: RC_REPLSTAT/reply len %d!\n",len);
  rp->c_replstat = *statp;
  break;
 case 129:
  cachv = &rp->c_replvec;
  bufsize = len << 2;
  cachv->iov_base = kmalloc(bufsize, GFP_KERNEL);
  if (!cachv->iov_base) {
   nfsd_reply_cache_free(rp);
   return;
  }
  cachv->iov_len = bufsize;
  memcpy(cachv->iov_base, statp, bufsize);
  break;
 case 130:
  nfsd_reply_cache_free(rp);
  return;
 }
 spin_lock(&cache_lock);
 drc_mem_usage += bufsize;
 lru_put_end(rp);
 rp->c_secure = rqstp->rq_secure;
 rp->c_type = cachetype;
 rp->c_state = RC_DONE;
 spin_unlock(&cache_lock);
 return;
}
