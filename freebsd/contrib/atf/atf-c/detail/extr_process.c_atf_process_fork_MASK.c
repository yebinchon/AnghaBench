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
typedef  int /*<<< orphan*/  atf_process_child_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void (*) (void*),int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 

atf_error_t
FUNC4(atf_process_child_t *c,
                 void (*start)(void *),
                 const atf_process_stream_t *outsb,
                 const atf_process_stream_t *errsb,
                 void *v)
{
    atf_error_t err;
    atf_process_stream_t inherit_outsb, inherit_errsb;
    const atf_process_stream_t *real_outsb, *real_errsb;

    real_outsb = NULL;  /* Shut up GCC warning. */
    err = FUNC3(outsb, &inherit_outsb, &real_outsb);
    if (FUNC0(err))
        goto out;

    real_errsb = NULL;  /* Shut up GCC warning. */
    err = FUNC3(errsb, &inherit_errsb, &real_errsb);
    if (FUNC0(err))
        goto out_out;

    err = FUNC2(c, start, real_outsb, real_errsb, v);

    if (errsb == NULL)
        FUNC1(&inherit_errsb);
out_out:
    if (outsb == NULL)
        FUNC1(&inherit_outsb);
out:
    return err;
}