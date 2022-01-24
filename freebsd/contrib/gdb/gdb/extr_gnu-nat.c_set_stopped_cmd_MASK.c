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
struct TYPE_2__ {int /*<<< orphan*/  stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  FUNC1 ()->stopped = FUNC0 (args, "yes", "no", "set stopped");
}