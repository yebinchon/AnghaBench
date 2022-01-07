
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int check_fatal_error (int ) ;
 int check_prog (struct context*,char const*) ;

__attribute__((used)) static void
_atf_tc_require_prog(struct context *ctx, const char *prog)
{
    check_fatal_error(check_prog(ctx, prog));
}
