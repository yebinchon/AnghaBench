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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static apr_bucket_brigade *FUNC4(apr_bucket_alloc_t *ba,
                                               const char *first, 
                                               const char *second)
{
    apr_bucket_brigade *bb = FUNC1(p, ba);
    apr_bucket *e;
 
    e = FUNC2(first, FUNC3(first), ba);
    FUNC0(bb, e);

    e = FUNC2(second, FUNC3(second), ba);
    FUNC0(bb, e);

    return bb;
}