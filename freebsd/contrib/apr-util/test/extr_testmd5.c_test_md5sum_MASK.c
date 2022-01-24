#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  apr_md5_ctx_t ;
typedef  int /*<<< orphan*/  abts_case ;
struct TYPE_2__ {void* string; void* digest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int APR_MD5_DIGESTSIZE ; 
 scalar_t__ FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void const*,unsigned int) ; 
 size_t count ; 
 TYPE_1__* md5sums ; 
 scalar_t__ FUNC4 (unsigned char*,void const*,int) ; 
 unsigned int FUNC5 (void const*) ; 

__attribute__((used)) static void FUNC6(abts_case *tc, void *data)
{
        apr_md5_ctx_t context;
        unsigned char digest[APR_MD5_DIGESTSIZE];
        const void *string = md5sums[count].string;
        const void *sum = md5sums[count].digest;
        unsigned int len = FUNC5(string);

        FUNC0(tc, "apr_md5_init", (FUNC2(&context) == 0));
        FUNC0(tc, "apr_md5_update", 
                    (FUNC3(&context, string, len) == 0));
        FUNC0(tc, "apr_md5_final", (FUNC1(digest, &context)
                                          == 0));
        FUNC0(tc, "check for correct md5 digest",
                    (FUNC4(digest, sum, APR_MD5_DIGESTSIZE) == 0));
}