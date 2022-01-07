
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_request_reply {int status; int refs; int wq; } ;


 int GFP_KERNEL ;
 int RQ_IDLE ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 struct ncp_request_reply* kmalloc (int,int ) ;

__attribute__((used)) static inline struct ncp_request_reply* ncp_alloc_req(void)
{
 struct ncp_request_reply *req;

 req = kmalloc(sizeof(struct ncp_request_reply), GFP_KERNEL);
 if (!req)
  return ((void*)0);

 init_waitqueue_head(&req->wq);
 atomic_set(&req->refs, (1));
 req->status = RQ_IDLE;

 return req;
}
