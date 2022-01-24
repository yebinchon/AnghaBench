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
struct exec_data {char const* const* member_0; } ;
typedef  int /*<<< orphan*/  atf_process_stream_t ;
typedef  int /*<<< orphan*/  atf_process_status_t ;
typedef  int /*<<< orphan*/  atf_process_child_t ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct exec_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exec_child ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
atf_error_t
FUNC5(const char *const *argv, const atf_fs_path_t *outfile,
              const atf_fs_path_t *errfile, atf_process_status_t *status)
{
    atf_error_t err;
    atf_process_child_t child;
    atf_process_stream_t outsb, errsb;
    struct exec_data ea = { argv };

    err = FUNC4(outfile, &outsb, errfile, &errsb);
    if (FUNC0(err))
        goto out;

    err = FUNC2(&child, exec_child, &outsb, &errsb, &ea);
    if (FUNC0(err))
        goto out_sbs;

    err = FUNC1(&child, status);

out_sbs:
    FUNC3(&errsb);
    FUNC3(&outsb);
out:
    return err;
}