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
typedef  int /*<<< orphan*/  atf_check_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*,char const*) ; 

__attribute__((used)) static
void
FUNC6(const atf_tc_t *tc, const char *helper_name, const char *arg,
                 atf_check_result_t *r)
{
    atf_fs_path_t process_helpers;
    const char *argv[4];

    FUNC4(tc, false, &process_helpers);

    argv[0] = FUNC2(&process_helpers);
    argv[1] = helper_name;
    argv[2] = arg;
    argv[3] = NULL;
    FUNC5("Executing %s %s %s\n", argv[0], argv[1], argv[2]);
    FUNC0(FUNC1(argv, r));

    FUNC3(&process_helpers);
}