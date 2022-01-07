
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * (* defer ) (TYPE_1__*) ;} ;
struct svc_rqst {TYPE_1__ rq_chandle; } ;
struct nlm_block {int b_flags; int * b_deferred_req; TYPE_1__* b_cache_req; } ;
typedef int __be32 ;


 int B_QUEUED ;
 int NLM_TIMEOUT ;
 int dprintk (char*,struct nlm_block*,int ,int ) ;
 int nlm_drop_reply ;
 int nlm_lck_denied_nolocks ;
 int nlmsvc_insert_block (struct nlm_block*,int ) ;
 int ntohl (int ) ;
 int * stub1 (TYPE_1__*) ;

__attribute__((used)) static __be32
nlmsvc_defer_lock_rqst(struct svc_rqst *rqstp, struct nlm_block *block)
{
 __be32 status = nlm_lck_denied_nolocks;

 block->b_flags |= B_QUEUED;

 nlmsvc_insert_block(block, NLM_TIMEOUT);

 block->b_cache_req = &rqstp->rq_chandle;
 if (rqstp->rq_chandle.defer) {
  block->b_deferred_req =
   rqstp->rq_chandle.defer(block->b_cache_req);
  if (block->b_deferred_req != ((void*)0))
   status = nlm_drop_reply;
 }
 dprintk("lockd: nlmsvc_defer_lock_rqst block %p flags %d status %d\n",
  block, block->b_flags, ntohl(status));

 return status;
}
