
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nlm_res {int status; int cookie; } ;
typedef int __be32 ;


 int EIO ;
 int * nlm4_decode_cookie (int *,int *) ;

__attribute__((used)) static int
nlm4clt_decode_res(struct rpc_rqst *req, __be32 *p, struct nlm_res *resp)
{
 if (!(p = nlm4_decode_cookie(p, &resp->cookie)))
  return -EIO;
 resp->status = *p++;
 return 0;
}
