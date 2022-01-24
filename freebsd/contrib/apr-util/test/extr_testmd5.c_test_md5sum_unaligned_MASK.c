#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  apr_md5_ctx_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int APR_MD5_DIGESTSIZE ; 
 scalar_t__ FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(abts_case *tc, void *data)
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

        FUNC0(tc, "apr_md5_init", (FUNC2(&context) == 0));
        for (i = 0; i < 10; i++) {
                FUNC0(tc, "apr_md5_update",
                    (FUNC3(&context, string, FUNC5(string)) == 0));
                string++;
        }
        FUNC0(tc, "apr_md5_final", (FUNC1(digest, &context)
                                          == 0));
        FUNC0(tc, "check for correct md5 digest of unaligned data",
                    (FUNC4(digest, sum, APR_MD5_DIGESTSIZE) == 0));
}