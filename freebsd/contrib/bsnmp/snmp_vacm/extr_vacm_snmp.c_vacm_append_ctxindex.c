
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct vacm_context {size_t* ctxname; } ;
struct asn_oid {size_t len; size_t* subs; } ;


 size_t strlen (size_t*) ;

__attribute__((used)) static void
vacm_append_ctxindex(struct asn_oid *oid, uint sub,
    const struct vacm_context *ctx)
{
 uint32_t i;

 oid->len = sub + strlen(ctx->ctxname) + 1;
 oid->subs[sub] = strlen(ctx->ctxname);
 for (i = 1; i <= strlen(ctx->ctxname); i++)
  oid->subs[sub + i] = ctx->ctxname[i - 1];
}
