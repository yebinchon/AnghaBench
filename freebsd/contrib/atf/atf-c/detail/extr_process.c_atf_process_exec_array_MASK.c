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
struct exec_args {char const* const* member_1; void (* member_2 ) () ;int /*<<< orphan*/  const* member_0; } ;
typedef  int /*<<< orphan*/  atf_process_stream_t ;
typedef  int /*<<< orphan*/  atf_process_status_t ;
typedef  int /*<<< orphan*/  atf_process_child_t ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct exec_args*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ atf_process_stream_type_capture ; 
 int /*<<< orphan*/  do_exec ; 

atf_error_t
FUNC9(atf_process_status_t *s,
                       const atf_fs_path_t *prog,
                       const char *const *argv,
                       const atf_process_stream_t *outsb,
                       const atf_process_stream_t *errsb,
                       void (*prehook)(void))
{
    atf_error_t err;
    atf_process_child_t c;
    struct exec_args ea = { prog, argv, prehook };

    FUNC1(outsb == NULL ||
        FUNC8(outsb) != atf_process_stream_type_capture);
    FUNC1(errsb == NULL ||
        FUNC8(errsb) != atf_process_stream_type_capture);

    err = FUNC7(&c, do_exec, outsb, errsb, &ea);
    if (FUNC4(err))
        goto out;

again:
    err = FUNC6(&c, s);
    if (FUNC4(err)) {
        FUNC0(FUNC3(err, "libc") && FUNC5(err) == EINTR);
        FUNC2(err);
        goto again;
    }

out:
    return err;
}