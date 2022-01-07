
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int apr_md4_ctx_t ;
typedef int abts_case ;
struct TYPE_2__ {void* string; void* md4sum; } ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_MD4_DIGESTSIZE ;
 scalar_t__ apr_md4_final (unsigned char*,int *) ;
 scalar_t__ apr_md4_init (int *) ;
 scalar_t__ apr_md4_update (int *,unsigned char*,unsigned int) ;
 size_t count ;
 TYPE_1__* md4sums ;
 scalar_t__ memcmp (unsigned char*,void const*,int) ;
 unsigned int strlen (void const*) ;

__attribute__((used)) static void test_md4sum(abts_case *tc, void *data)
{
        apr_md4_ctx_t context;
        unsigned char digest[APR_MD4_DIGESTSIZE];
        const void *string = md4sums[count].string;
        const void *sum = md4sums[count].md4sum;
        unsigned int len = strlen(string);

        ABTS_ASSERT(tc, "apr_md4_init", (apr_md4_init(&context) == 0));
        ABTS_ASSERT(tc, "apr_md4_update",
                    (apr_md4_update(&context,
                                    (unsigned char *)string, len) == 0));

        ABTS_ASSERT(tc, "apr_md4_final", (apr_md4_final(digest, &context) ==0));
        ABTS_ASSERT(tc, "check for correct md4 digest",
                    (memcmp(digest, sum, APR_MD4_DIGESTSIZE) == 0));
}
