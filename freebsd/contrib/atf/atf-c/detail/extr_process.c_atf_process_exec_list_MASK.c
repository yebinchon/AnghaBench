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
typedef  int /*<<< orphan*/  atf_process_stream_t ;
typedef  int /*<<< orphan*/  atf_process_status_t ;
typedef  int /*<<< orphan*/  atf_list_t ;
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const**,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void (*) ()) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ atf_process_stream_type_capture ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char const***) ; 

atf_error_t
FUNC6(atf_process_status_t *s,
                      const atf_fs_path_t *prog,
                      const atf_list_t *argv,
                      const atf_process_stream_t *outsb,
                      const atf_process_stream_t *errsb,
                      void (*prehook)(void))
{
    atf_error_t err;
    const char **argv2;

    FUNC0(outsb == NULL ||
        FUNC3(outsb) != atf_process_stream_type_capture);
    FUNC0(errsb == NULL ||
        FUNC3(errsb) != atf_process_stream_type_capture);

    argv2 = NULL; /* Silence GCC warning. */
    err = FUNC5(argv, &argv2);
    if (FUNC1(err))
        goto out;

    err = FUNC2(s, prog, argv2, outsb, errsb, prehook);

    FUNC4(argv2);
out:
    return err;
}