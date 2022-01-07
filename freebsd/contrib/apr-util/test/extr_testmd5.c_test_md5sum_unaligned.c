
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_md5_ctx_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int APR_MD5_DIGESTSIZE ;
 scalar_t__ apr_md5_final (unsigned char*,int *) ;
 scalar_t__ apr_md5_init (int *) ;
 scalar_t__ apr_md5_update (int *,char const*,int ) ;
 scalar_t__ memcmp (unsigned char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_md5sum_unaligned(abts_case *tc, void *data)
{
        apr_md5_ctx_t context;
        const char *string = "abcdefghijklmnopqrstuvwxyz01234"
                             "abcdefghijklmnopqrstuvwxyz01234"
                             "abcdefghijklmnopqrstuvwxyz01234"
                             "abcdefghijklmnopqrstuvwxyz01234_";
        const char *sum =
            "\x93\x17\x22\x78\xee\x30\x82\xb3\xeb\x95\x33\xec\xea\x78\xb7\x89";
        unsigned char digest[APR_MD5_DIGESTSIZE];
        unsigned int i;

        ABTS_ASSERT(tc, "apr_md5_init", (apr_md5_init(&context) == 0));
        for (i = 0; i < 10; i++) {
                ABTS_ASSERT(tc, "apr_md5_update",
                    (apr_md5_update(&context, string, strlen(string)) == 0));
                string++;
        }
        ABTS_ASSERT(tc, "apr_md5_final", (apr_md5_final(digest, &context)
                                          == 0));
        ABTS_ASSERT(tc, "check for correct md5 digest of unaligned data",
                    (memcmp(digest, sum, APR_MD5_DIGESTSIZE) == 0));
}
