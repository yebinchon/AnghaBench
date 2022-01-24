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
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC7(const atf_fs_path_t *dir, const atf_fs_path_t *outfile,
               const atf_fs_path_t *errfile)
{
    {
        atf_error_t err = FUNC4(outfile);
        if (FUNC5(err)) {
            FUNC0(FUNC2(err, "libc") &&
                FUNC6(err) == ENOENT);
            FUNC1(err);
        } else
            FUNC0(!FUNC5(err));
    }

    {
        atf_error_t err = FUNC4(errfile);
        if (FUNC5(err)) {
            FUNC0(FUNC2(err, "libc") &&
                FUNC6(err) == ENOENT);
            FUNC1(err);
        } else
            FUNC0(!FUNC5(err));
    }

    {
        atf_error_t err = FUNC3(dir);
        FUNC0(!FUNC5(err));
    }
}