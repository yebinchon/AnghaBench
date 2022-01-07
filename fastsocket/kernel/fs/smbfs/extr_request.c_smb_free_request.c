
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_request {int rq_flags; scalar_t__ rq_trans2buffer; scalar_t__ rq_buffer; TYPE_1__* rq_server; } ;
struct TYPE_2__ {int nr_requests; } ;


 int SMB_REQ_STATIC ;
 int atomic_dec (int *) ;
 int kfree (scalar_t__) ;
 int kmem_cache_free (int ,struct smb_request*) ;
 int req_cachep ;

__attribute__((used)) static void smb_free_request(struct smb_request *req)
{
 atomic_dec(&req->rq_server->nr_requests);
 if (req->rq_buffer && !(req->rq_flags & SMB_REQ_STATIC))
  kfree(req->rq_buffer);
 kfree(req->rq_trans2buffer);
 kmem_cache_free(req_cachep, req);
}
