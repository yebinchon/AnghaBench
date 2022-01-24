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
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
atf_error_t
FUNC3(const char *src, const char *obj, atf_list_t *argv)
{
    atf_error_t err;

    err = FUNC1("-o", obj, argv);
    if (FUNC2(err))
        goto out;

    err = FUNC0("-c", argv);
    if (FUNC2(err))
        goto out;

    err = FUNC0(src, argv);

out:
    return err;
}