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
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  apr_bucket_brigade ;
typedef  int /*<<< orphan*/  apr_bucket_alloc_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC8(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = FUNC3(p);
    apr_bucket_brigade *bb = FUNC0(p, ba);
    apr_file_t *f;

    f = FUNC7(tc, "manyfile.bin",
                       "world" "hello" "brave" " ,\n");

    FUNC2(bb, f, 5, 5, p);
    FUNC2(bb, f, 16, 1, p);
    FUNC2(bb, f, 15, 1, p);
    FUNC2(bb, f, 10, 5, p);
    FUNC2(bb, f, 15, 1, p);
    FUNC2(bb, f, 0, 5, p);
    FUNC2(bb, f, 17, 1, p);

    /* can you tell what it is yet? */
    FUNC6(tc, "file seek test", bb,
                  "hello, brave world\n");

    FUNC5(f);
    FUNC1(bb);
    FUNC4(ba);
}