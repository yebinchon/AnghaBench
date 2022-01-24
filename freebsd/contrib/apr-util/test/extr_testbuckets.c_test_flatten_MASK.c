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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC5(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = FUNC1(p);
    apr_bucket_brigade *bb;

    bb = FUNC4(ba, "hello, ", "world");

    FUNC3(tc, "flatten brigade", bb, "hello, world");

    FUNC0(bb);
    FUNC2(ba);    
}