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
typedef  int /*<<< orphan*/  atf_tp_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char const*) ; 

atf_error_t
FUNC3(const atf_tp_t *tp, const char *tcname)
{
    const atf_tc_t *tc;

    tc = FUNC2(tp, tcname);
    FUNC0(tc != NULL);

    return FUNC1(tc);
}