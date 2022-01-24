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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,char*,int) ; 
 size_t const FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*,size_t const) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/  const,int*,int /*<<< orphan*/ ) ; 

void
FUNC13(const pid_t pid, const int exitstatus, const char *expout,
               const char *experr)
{
    int status;
    FUNC0(FUNC12(pid, &status, 0) != -1);

    atf_dynstr_t out_name;
    FUNC8(&out_name, pid, "out", true);

    atf_dynstr_t err_name;
    FUNC8(&err_name, pid, "err", true);

    FUNC5(FUNC4(&out_name), "subprocess stdout: ");
    FUNC5(FUNC4(&err_name), "subprocess stderr: ");

    FUNC0(FUNC3(status));
    FUNC1(exitstatus, FUNC2(status));

    const char *save_prefix = "save:";
    const size_t save_prefix_length = FUNC9(save_prefix);

    if (FUNC9(expout) > save_prefix_length &&
        FUNC10(expout, save_prefix, save_prefix_length) == 0) {
        FUNC7(FUNC4(&out_name),
                            expout + save_prefix_length);
    } else {
        FUNC0(FUNC6(FUNC4(&out_name),
                                           expout));
    }

    if (FUNC9(experr) > save_prefix_length &&
        FUNC10(experr, save_prefix, save_prefix_length) == 0) {
        FUNC7(FUNC4(&err_name),
                            experr + save_prefix_length);
    } else {
        FUNC0(FUNC6(FUNC4(&err_name),
                                           experr));
    }

    FUNC0(FUNC11(FUNC4(&out_name)) != -1);
    FUNC0(FUNC11(FUNC4(&err_name)) != -1);
}