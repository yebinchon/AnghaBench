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
typedef  int /*<<< orphan*/  atf_process_status_t ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void (*) ()) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*) ; 

__attribute__((used)) static
void
FUNC6(const atf_tc_t *tc, const char *helper_name, atf_process_status_t *s,
        void (*prehook)(void))
{
    atf_fs_path_t process_helpers;
    const char *argv[3];

    FUNC4(tc, true, &process_helpers);

    argv[0] = FUNC1(&process_helpers);
    argv[1] = helper_name;
    argv[2] = NULL;
    FUNC5("Executing %s %s\n", argv[0], argv[1]);

    FUNC0(FUNC3(s, &process_helpers, argv, NULL, NULL, prehook));
    FUNC2(&process_helpers);
}