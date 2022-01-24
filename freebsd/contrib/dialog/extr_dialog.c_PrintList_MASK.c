#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 TYPE_1__ dialog_state ; 
 char const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const* const,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 char* program ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void
FUNC4(const char *const *list)
{
    const char *leaf = FUNC3(program, '/');
    unsigned n = 0;

    if (leaf != 0)
	leaf++;
    else
	leaf = program;

    while (*list != 0) {
	FUNC1(dialog_state.output, *list, n ? leaf : FUNC0());
	(void) FUNC2('\n', dialog_state.output);
	n = 1;
	list++;
    }
}