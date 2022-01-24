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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_bucket_brigade ;
typedef  int /*<<< orphan*/  apr_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_bucket ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  APR_BLOCK_READ ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const**,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  p ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static void FUNC22(abts_case *tc, void *ctx)
{
    apr_bucket_alloc_t *ba = FUNC9(p);
    apr_bucket_brigade *bb;
    apr_bucket *e;
    char *str = "alphabeta";
    int n;

    bb = FUNC7(p, ba);

    FUNC3(bb,
                            FUNC13(str, 9, ba));
    FUNC3(bb, 
                            FUNC17(str, 9, ba));
    FUNC3(bb, 
                            FUNC12(FUNC21(str), 9, free, ba));
    FUNC3(bb, 
                            FUNC14(FUNC18(p, str), 9, p, 
                                                   ba));

    FUNC0(tc, "four buckets inserted", FUNC19(bb) == 4);
    
    /* now split each of the buckets after byte 5 */
    for (n = 0, e = FUNC2(bb); n < 4; n++) {
        FUNC0(tc, "reached end of brigade", 
                    e != FUNC4(bb));
        FUNC0(tc, "split bucket OK",
                    FUNC16(e, 5) == APR_SUCCESS);
        e = FUNC5(e);
        FUNC0(tc, "split OK", e != FUNC4(bb));
        e = FUNC5(e);
    }
    
    FUNC0(tc, "four buckets split into eight", 
                FUNC19(bb) == 8);

    for (n = 0, e = FUNC2(bb); n < 4; n++) {
        const char *data;
        apr_size_t len;
        
        FUNC6(tc, "read alpha from bucket",
                           FUNC15(e, &data, &len, APR_BLOCK_READ));
        FUNC0(tc, "read 5 bytes", len == 5);
        FUNC1(tc, "alpha", data, 5);

        e = FUNC5(e);

        FUNC6(tc, "read beta from bucket",
                           FUNC15(e, &data, &len, APR_BLOCK_READ));
        FUNC0(tc, "read 4 bytes", len == 4);
        FUNC1(tc, "beta", data, 5);

        e = FUNC5(e);
    }

    /* now delete the "alpha" buckets */
    for (n = 0, e = FUNC2(bb); n < 4; n++) {
        apr_bucket *f;

        FUNC0(tc, "reached end of brigade",
                    e != FUNC4(bb));
        f = FUNC5(e);
        FUNC11(e);
        e = FUNC5(f);
    }    
    
    FUNC0(tc, "eight buckets reduced to four", 
                FUNC19(bb) == 4);

    FUNC20(tc, "flatten beta brigade", bb,
                  "beta" "beta" "beta" "beta");

    FUNC8(bb);
    FUNC10(ba);
}