
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;
typedef int apr_bucket_brigade ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int ABTS_STR_NEQUAL (int *,char const*,char*,scalar_t__) ;
 int apr_assert_success (int *,char*,int ) ;
 int apr_brigade_flatten (int *,char*,scalar_t__*) ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int sprintf (char*,char*,char const*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void flatten_match(abts_case *tc, const char *ctx,
                          apr_bucket_brigade *bb,
                          const char *expect)
{
    apr_size_t elen = strlen(expect);
    char *buf = malloc(elen);
    apr_size_t len = elen;
    char msg[200];

    sprintf(msg, "%s: flatten brigade", ctx);
    apr_assert_success(tc, msg, apr_brigade_flatten(bb, buf, &len));
    sprintf(msg, "%s: length match (%ld not %ld)", ctx,
            (long)len, (long)elen);
    ABTS_ASSERT(tc, msg, len == elen);
    sprintf(msg, "%s: result match", msg);
    ABTS_STR_NEQUAL(tc, expect, buf, len);
    free(buf);
}
