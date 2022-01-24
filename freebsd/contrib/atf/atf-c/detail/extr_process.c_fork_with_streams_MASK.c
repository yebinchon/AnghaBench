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
typedef  int /*<<< orphan*/  stream_prepare_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  atf_process_stream_t ;
typedef  int /*<<< orphan*/  atf_process_child_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void (*) (void*),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static
atf_error_t
FUNC9(atf_process_child_t *c,
                  void (*start)(void *),
                  const atf_process_stream_t *outsb,
                  const atf_process_stream_t *errsb,
                  void *v)
{
    atf_error_t err;
    stream_prepare_t outsp;
    stream_prepare_t errsp;
    pid_t pid;

    err = FUNC8(&outsp, outsb);
    if (FUNC1(err))
        goto out;

    err = FUNC8(&errsp, errsb);
    if (FUNC1(err))
        goto err_outpipe;

    pid = FUNC6();
    if (pid == -1) {
        err = FUNC2(errno, "Failed to fork");
        goto err_errpipe;
    }

    if (pid == 0) {
        FUNC4(start, v, &outsp, &errsp);
        UNREACHABLE;
        FUNC0();
        err = FUNC3();
    } else {
        err = FUNC5(c, pid, &outsp, &errsp);
        if (FUNC1(err))
            goto err_errpipe;
    }

    goto out;

err_errpipe:
    FUNC7(&errsp);
err_outpipe:
    FUNC7(&outsp);

out:
    return err;
}