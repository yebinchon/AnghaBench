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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*) ; 

void
FUNC3(const atf_tc_t *tc, const bool is_detail,
                         atf_fs_path_t *path)
{
    FUNC0(FUNC1(path, "%s/%sprocess_helpers",
                            FUNC2(tc, "srcdir"),
                            is_detail ? "" : "detail/"));
}