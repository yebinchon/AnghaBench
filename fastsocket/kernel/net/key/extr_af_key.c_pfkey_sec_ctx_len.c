
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sadb_x_sec_ctx {scalar_t__ sadb_x_ctx_len; } ;


 int DIV_ROUND_UP (scalar_t__,int) ;

__attribute__((used)) static inline int pfkey_sec_ctx_len(struct sadb_x_sec_ctx *sec_ctx)
{
 return DIV_ROUND_UP(sizeof(struct sadb_x_sec_ctx) +
       sec_ctx->sadb_x_ctx_len,
       sizeof(uint64_t));
}
