
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int expect; } ;


 int EXPECT_PASS ;
 int validate_expect (struct context*) ;

__attribute__((used)) static void
_atf_tc_expect_pass(struct context *ctx)
{
    validate_expect(ctx);

    ctx->expect = EXPECT_PASS;
}
