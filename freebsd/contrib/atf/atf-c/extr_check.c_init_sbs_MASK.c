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
typedef  int /*<<< orphan*/  atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
atf_error_t
FUNC3(const atf_fs_path_t *outfile, atf_process_stream_t *outsb,
         const atf_fs_path_t *errfile, atf_process_stream_t *errsb)
{
    atf_error_t err;

    err = FUNC2(outfile, outsb);
    if (FUNC0(err))
        goto out;

    err = FUNC2(errfile, errsb);
    if (FUNC0(err)) {
        FUNC1(outsb);
        goto out;
    }

out:
    return err;
}