
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_sec_ctx {int len; int ctx_len; int ctx_alg; int ctx_doi; int exttype; } ;
struct xfrm_sec_ctx {int ctx_len; int ctx_str; int ctx_alg; int ctx_doi; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int XFRMA_SEC_CTX ;
 int memcpy (struct xfrm_user_sec_ctx*,int ,int) ;
 struct xfrm_user_sec_ctx* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int copy_sec_ctx(struct xfrm_sec_ctx *s, struct sk_buff *skb)
{
 struct xfrm_user_sec_ctx *uctx;
 struct nlattr *attr;
 int ctx_size = sizeof(*uctx) + s->ctx_len;

 attr = nla_reserve(skb, XFRMA_SEC_CTX, ctx_size);
 if (attr == ((void*)0))
  return -EMSGSIZE;

 uctx = nla_data(attr);
 uctx->exttype = XFRMA_SEC_CTX;
 uctx->len = ctx_size;
 uctx->ctx_doi = s->ctx_doi;
 uctx->ctx_alg = s->ctx_alg;
 uctx->ctx_len = s->ctx_len;
 memcpy(uctx + 1, s->ctx_str, s->ctx_len);

 return 0;
}
