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
typedef  int /*<<< orphan*/  atf_process_stream_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
atf_error_t
FUNC3(const atf_process_stream_t *usersb,
                      atf_process_stream_t *inheritsb,
                      const atf_process_stream_t **realsb)
{
    atf_error_t err;

    if (usersb == NULL) {
        err = FUNC2(inheritsb);
        if (!FUNC0(err))
            *realsb = inheritsb;
    } else {
        err = FUNC1();
        *realsb = usersb;
    }

    return err;
}