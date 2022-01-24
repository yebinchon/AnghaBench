#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m_data; } ;
typedef  TYPE_1__ atf_fs_path_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
atf_error_t
FUNC6(const atf_fs_path_t *p, char **buf)
{
    atf_error_t err;
    char *str;

    str = (char *)FUNC4(FUNC1(&p->m_data) + 1);
    if (str == NULL)
        err = FUNC3();
    else {
        FUNC5(str, FUNC0(&p->m_data));
        *buf = str;
        err = FUNC2();
    }

    return err;
}