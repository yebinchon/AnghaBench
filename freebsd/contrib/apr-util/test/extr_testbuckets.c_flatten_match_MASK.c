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
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_bucket_brigade ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,...) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(abts_case *tc, const char *ctx,
                          apr_bucket_brigade *bb,
                          const char *expect)
{
    apr_size_t elen = FUNC7(expect);
    char *buf = FUNC5(elen);
    apr_size_t len = elen;
    char msg[200];

    FUNC6(msg, "%s: flatten brigade", ctx);
    FUNC2(tc, msg, FUNC3(bb, buf, &len));
    FUNC6(msg, "%s: length match (%ld not %ld)", ctx,
            (long)len, (long)elen);
    FUNC0(tc, msg, len == elen);
    FUNC6(msg, "%s: result match", msg);
    FUNC1(tc, expect, buf, len);
    FUNC4(buf);
}