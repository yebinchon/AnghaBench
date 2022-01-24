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
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (char const*) ; 

atf_error_t
FUNC4(const atf_fs_path_t *p)
{
    atf_error_t err;
    const char *path;

    path = FUNC0(p);

    if (FUNC3(path) != 0)
        err = FUNC1(errno, "Cannot unlink file: '%s'", path);
    else
        err = FUNC2();

    return err;
}