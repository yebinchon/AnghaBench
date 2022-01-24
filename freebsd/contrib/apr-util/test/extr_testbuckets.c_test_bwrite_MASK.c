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
typedef  int apr_off_t ;
typedef  int /*<<< orphan*/  apr_bucket_brigade ;
typedef  int /*<<< orphan*/  apr_bucket_alloc_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int COUNT ; 
 int /*<<< orphan*/  THESTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static void FUNC8(abts_case *tc, void *data)
{
    apr_bucket_alloc_t *ba = FUNC6(p);
    apr_bucket_brigade *bb = FUNC2(p, ba);
    apr_off_t length;
    int n;

    for (n = 0; n < COUNT; n++) {
        FUNC1(tc, "brigade_write", 
                           FUNC5(bb, NULL, NULL,
                                             THESTR, sizeof THESTR));
    }

    FUNC1(tc, "determine brigade length",
                       FUNC4(bb, 1, &length));

    FUNC0(tc, "brigade has correct length",
                length == (COUNT * sizeof THESTR));
    
    FUNC3(bb);
    FUNC7(ba);
}