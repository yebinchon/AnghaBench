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
typedef  int /*<<< orphan*/  apr_bucket_brigade ;
typedef  int /*<<< orphan*/  apr_bucket_alloc_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  APR_BLOCK_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC8(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = FUNC4(p);
    apr_bucket_brigade *bin, *bout;

    bin = FUNC7(ba, "blah blah blah-",
                              "end of line.\nfoo foo foo");
    bout = FUNC1(p, ba);

    FUNC0(tc, "split line",
                       FUNC3(bout, bin,
                                              APR_BLOCK_READ, 100));

    FUNC6(tc, "split line", bout, "blah blah blah-end of line.\n");
    FUNC6(tc, "remainder", bin, "foo foo foo");

    FUNC2(bout);
    FUNC2(bin);
    FUNC5(ba);
}