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
struct TYPE_3__ {int /*<<< orphan*/  children; int /*<<< orphan*/  commands; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int errors ; 
 TYPE_1__* postCommands ; 

int
FUNC3(void)
{
    if (postCommands != NULL &&
	(!FUNC2(postCommands->commands) ||
	 !FUNC2(postCommands->children))) {
	if (errors) {
	    FUNC0("Errors reported so .END ignored");
	} else {
	    FUNC1(postCommands);
	}
    }
    return(errors);
}