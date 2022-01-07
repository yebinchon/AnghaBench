
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_request {int rq_queue; int rq_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int list_del_init (int *) ;
 int smb_free_request (struct smb_request*) ;

void smb_rput(struct smb_request *req)
{
 if (atomic_dec_and_test(&req->rq_count)) {
  list_del_init(&req->rq_queue);
  smb_free_request(req);
 }
}
