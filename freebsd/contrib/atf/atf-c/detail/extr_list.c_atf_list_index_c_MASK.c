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
typedef  int /*<<< orphan*/  atf_list_t ;
typedef  int /*<<< orphan*/  atf_list_citer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 void const* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 size_t const FUNC6 (int /*<<< orphan*/  const*) ; 

const void *
FUNC7(const atf_list_t *list, const size_t idx)
{
    atf_list_citer_t iter;

    FUNC0(idx < FUNC6(list));

    iter = FUNC2(list);
    {
        size_t pos = 0;
        while (pos < idx &&
               !FUNC1((iter),
                                                FUNC5(list))) {
            iter = FUNC4(iter);
            pos++;
        }
    }
    return FUNC3(iter);
}