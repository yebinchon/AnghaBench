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
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC15(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba;
    apr_bucket_brigade *bb;
    apr_bucket *fb, *tb;
    
    ba = FUNC11(p);
    bb = FUNC9(p, ba);
    
    fb = FUNC2(bb);
    FUNC0(tc, "first bucket of empty brigade is sentinel",
                fb == FUNC4(bb));

    fb = FUNC13(ba);
    FUNC3(bb, fb);

    FUNC0(tc, "first bucket of brigade is flush",
                FUNC2(bb) == fb);

    FUNC0(tc, "bucket after flush is sentinel",
                FUNC6(fb) == FUNC4(bb));

    tb = FUNC14("aaa", 3, ba);
    FUNC5(fb, tb);

    FUNC0(tc, "bucket before flush now transient",
                FUNC7(fb) == tb);
    FUNC0(tc, "bucket after transient is flush",
                FUNC6(tb) == fb);
    FUNC0(tc, "bucket before transient is sentinel",
                FUNC7(tb) == FUNC4(bb));

    FUNC8(bb);

    FUNC0(tc, "cleaned up brigade was empty", FUNC1(bb));

    FUNC10(bb);
    FUNC12(ba);
}