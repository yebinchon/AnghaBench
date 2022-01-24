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
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
atf_error_t
FUNC4(atf_fs_path_t *srcdir)
{
    atf_error_t err;
    atf_fs_path_t parent;

    err = FUNC1(srcdir, &parent);
    if (FUNC3(err))
        goto out;

    FUNC2(srcdir);
    *srcdir = parent;

    FUNC0(!FUNC3(err));
out:
    return err;
}