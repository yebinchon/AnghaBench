
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int * str; scalar_t__ len; int type; int role; int user; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int kfree (int *) ;
 int * kstrdup (int *,int ) ;
 int mls_context_cpy (struct context*,struct context*) ;

__attribute__((used)) static inline int context_cpy(struct context *dst, struct context *src)
{
 int rc;

 dst->user = src->user;
 dst->role = src->role;
 dst->type = src->type;
 if (src->str) {
  dst->str = kstrdup(src->str, GFP_ATOMIC);
  if (!dst->str)
   return -ENOMEM;
  dst->len = src->len;
 } else {
  dst->str = ((void*)0);
  dst->len = 0;
 }
 rc = mls_context_cpy(dst, src);
 if (rc) {
  kfree(dst->str);
  return rc;
 }
 return 0;
}
