
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int apr_md5_ctx_t ;
typedef int abts_case ;
struct TYPE_2__ {void* string; void* digest; } ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_MD5_DIGESTSIZE ;
 scalar_t__ apr_md5_final (unsigned char*,int *) ;
 scalar_t__ apr_md5_init (int *) ;
 scalar_t__ apr_md5_update (int *,void const*,unsigned int) ;
 size_t count ;
 TYPE_1__* md5sums ;
 scalar_t__ memcmp (unsigned char*,void const*,int) ;
 unsigned int strlen (void const*) ;

__attribute__((used)) static void test_md5sum(abts_case *tc, void *data)
{
        apr_md5_ctx_t context;
        unsigned char digest[APR_MD5_DIGESTSIZE];
        const void *string = md5sums[count].string;
        const void *sum = md5sums[count].digest;
        unsigned int len = strlen(string);

        ABTS_ASSERT(tc, "apr_md5_init", (apr_md5_init(&context) == 0));
        ABTS_ASSERT(tc, "apr_md5_update",
                    (apr_md5_update(&context, string, len) == 0));
        ABTS_ASSERT(tc, "apr_md5_final", (apr_md5_final(digest, &context)
                                          == 0));
        ABTS_ASSERT(tc, "check for correct md5 digest",
                    (memcmp(digest, sum, APR_MD5_DIGESTSIZE) == 0));
}
