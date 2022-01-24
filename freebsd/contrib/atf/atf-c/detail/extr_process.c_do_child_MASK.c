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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void
FUNC6(void (*start)(void *),
         void *v,
         const stream_prepare_t *outsp,
         const stream_prepare_t *errsp)
{
    atf_error_t err;

    err = FUNC3(outsp, STDOUT_FILENO);
    if (FUNC2(err))
        goto out;

    err = FUNC3(errsp, STDERR_FILENO);
    if (FUNC2(err))
        goto out;

    start(v);
    UNREACHABLE;

out:
    if (FUNC2(err)) {
        char buf[1024];

        FUNC0(err, buf, sizeof(buf));
        FUNC5(stderr, "Unhandled error: %s\n", buf);
        FUNC1(err);

        FUNC4(EXIT_FAILURE);
    } else
        FUNC4(EXIT_SUCCESS);
}