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
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int FUNC3 (int const,int const) ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static
atf_error_t
FUNC4(const int oldfd, const int newfd)
{
    atf_error_t err;

    if (oldfd != newfd) {
        if (FUNC3(oldfd, newfd) == -1) {
            err = FUNC0(errno, "Could not allocate file descriptor");
        } else {
            FUNC2(oldfd);
            err = FUNC1();
        }
    } else
        err = FUNC1();

    return err;
}