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
typedef  int /*<<< orphan*/  apr_md4_ctx_t ;
typedef  int /*<<< orphan*/  abts_case ;
struct TYPE_2__ {void* string; void* md4sum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int APR_MD4_DIGESTSIZE ; 
 scalar_t__ FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 size_t count ; 
 TYPE_1__* md4sums ; 
 scalar_t__ FUNC4 (unsigned char*,void const*,int) ; 
 unsigned int FUNC5 (void const*) ; 

__attribute__((used)) static void FUNC6(abts_case *tc, void *data)
{
        apr_md4_ctx_t context;
        unsigned char digest[APR_MD4_DIGESTSIZE];
        const void *string = md4sums[count].string;
        const void *sum = md4sums[count].md4sum;
        unsigned int len = FUNC5(string);

        FUNC0(tc, "apr_md4_init", (FUNC2(&context) == 0));
        FUNC0(tc, "apr_md4_update", 
                    (FUNC3(&context, 
                                    (unsigned char *)string, len) == 0));
        
        FUNC0(tc, "apr_md4_final", (FUNC1(digest, &context) ==0));
        FUNC0(tc, "check for correct md4 digest", 
                    (FUNC4(digest, sum, APR_MD4_DIGESTSIZE) == 0));
}