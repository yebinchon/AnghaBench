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
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,void (*) (atf_tc_t*),void (*) (atf_tc_t const*),int /*<<< orphan*/ *,char const* const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 

__attribute__((used)) static
void
FUNC4(const char *name, void (*head)(atf_tc_t *),
                  void (*body)(const atf_tc_t *))
{
    atf_tc_t tc;
    const char *const config[] = { NULL };

    FUNC0(FUNC2(&tc, name, head, body, NULL, config));
    FUNC3(&tc, "output", "error", "result");
    FUNC1(&tc);
}