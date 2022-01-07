
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_request_reply {int refs; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct ncp_request_reply*) ;

__attribute__((used)) static void ncp_req_put(struct ncp_request_reply *req)
{
 if (atomic_dec_and_test(&req->refs))
  kfree(req);
}
