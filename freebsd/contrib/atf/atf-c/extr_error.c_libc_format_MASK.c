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
struct TYPE_3__ {char* m_what; int /*<<< orphan*/  m_errno; } ;
typedef  TYPE_1__ atf_libc_error_data_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC5(const atf_error_t err, char *buf, size_t buflen)
{
    const atf_libc_error_data_t *data;

    FUNC0(FUNC2(err, "libc"));

    data = FUNC1(err);
    FUNC3(buf, buflen, "%s: %s", data->m_what, FUNC4(data->m_errno));
}