
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_request_reply {int refs; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void ncp_req_get(struct ncp_request_reply *req)
{
 atomic_inc(&req->refs);
}
