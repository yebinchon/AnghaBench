
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int resfile; int expect_reason; } ;
typedef int atf_dynstr_t ;


 int EXIT_SUCCESS ;
 int atf_dynstr_cstring (int *) ;
 int atf_dynstr_prepend_fmt (int *,char*,int ) ;
 int check_fatal_error (int ) ;
 int create_resfile (int ,char*,int,int *) ;
 int exit (int ) ;

__attribute__((used)) static void
expected_failure(struct context *ctx, atf_dynstr_t *reason)
{
    check_fatal_error(atf_dynstr_prepend_fmt(reason, "%s: ",
        atf_dynstr_cstring(&ctx->expect_reason)));
    create_resfile(ctx->resfile, "expected_failure", -1, reason);
    exit(EXIT_SUCCESS);
}
