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
typedef  int /*<<< orphan*/  atf_tc_t ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

bool
FUNC6(const atf_tc_t *tc, const char *sfile)
{
    atf_fs_path_t path;

    FUNC0(FUNC3(&path, "%s/%s",
                            FUNC4(tc, "srcdir"), sfile));
    const bool result = FUNC5(FUNC1(&path));
    FUNC2(&path);
    return result;
}