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
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  apr_bucket_brigade ;
typedef  int /*<<< orphan*/  apr_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_bucket ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  APR_BLOCK_READ ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ APR_EOF ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC14(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = FUNC7(p);
    apr_bucket_brigade *bb = FUNC4(p, ba);
    apr_file_t *f = FUNC13(tc, "testfile.txt", "hello");
    apr_bucket *e;
    const char *buf;
    apr_size_t len;

    FUNC6(bb, f, 0, 5, p);

    FUNC12(f, 0);

    e = FUNC1(bb);

    FUNC0(tc, "single bucket in brigade",
                FUNC3(e) == FUNC2(bb));

    FUNC9(e, 0);

    FUNC0(tc, "read gave APR_EOF",
                FUNC10(e, &buf, &len, APR_BLOCK_READ) == APR_EOF);

    FUNC0(tc, "read length 0", len == 0);
    
    FUNC0(tc, "still a single bucket in brigade",
                FUNC3(e) == FUNC2(bb));

    FUNC11(f);
    FUNC5(bb);
    FUNC8(ba);
}