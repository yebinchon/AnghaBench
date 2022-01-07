
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int UNREACHABLE ;
 int pass (struct context*) ;

__attribute__((used)) static void
_atf_tc_pass(struct context *ctx)
{
    pass(ctx);
    UNREACHABLE;
}
