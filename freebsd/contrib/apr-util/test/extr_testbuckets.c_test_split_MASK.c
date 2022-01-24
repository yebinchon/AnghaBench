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
typedef  int /*<<< orphan*/  apr_bucket ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC9(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = FUNC4(p);
    apr_bucket_brigade *bb, *bb2;
    apr_bucket *e;

    bb = FUNC8(ba, "hello, ", "world");

    /* split at the "world" bucket */
    e = FUNC1(bb);
    bb2 = FUNC3(bb, e);

    FUNC0(tc, "split brigade contains one bucket",
                FUNC6(bb2) == 1);
    FUNC0(tc, "original brigade contains one bucket",
                FUNC6(bb) == 1);

    FUNC7(tc, "match original brigade", bb, "hello, ");
    FUNC7(tc, "match split brigade", bb2, "world");

    FUNC2(bb2);
    FUNC2(bb);
    FUNC5(ba);
}