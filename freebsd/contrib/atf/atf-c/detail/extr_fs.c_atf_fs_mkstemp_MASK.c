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
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  atf_fs_stat_reg_type ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

atf_error_t
FUNC9(atf_fs_path_t *p, int *fdout)
{
    atf_error_t err;
    char *buf;
    int fd;

    if (!FUNC2(S_IRWXU, S_IRWXU)) {
        err = FUNC7(p, atf_fs_stat_reg_type, FUNC4());
        goto out;
    }

    err = FUNC3(p, &buf);
    if (FUNC1(err))
        goto out;

    err = FUNC5(buf, &fd);
    if (FUNC1(err))
        goto out_buf;

    FUNC8(p, buf);
    *fdout = fd;

    FUNC0(!FUNC1(err));
out_buf:
    FUNC6(buf);
out:
    return err;
}