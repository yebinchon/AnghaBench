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
typedef  int /*<<< orphan*/  buf ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_bucket_brigade ;
typedef  int /*<<< orphan*/  apr_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_bucket ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = FUNC7(p);
    apr_bucket_brigade *bb = FUNC3(p, ba);
    apr_bucket *e;
    char buf[30];
    apr_size_t len = sizeof(buf);
    const char *expect = "123456789abcdefghij";

    e = FUNC9("1", 1, NULL, ba);
    FUNC1(bb, e);

    FUNC6(bb, NULL, NULL, "2", "34", "567", "8", "9a", "bcd",
                        "e", "f", "gh", "i", NULL);
    FUNC6(bb, NULL, NULL, "j", NULL);
    FUNC2(tc, "apr_brigade_flatten",
                       FUNC5(bb, buf, &len));
    FUNC0(tc, expect, buf, FUNC10(expect));

    FUNC4(bb);
    FUNC8(ba);
}