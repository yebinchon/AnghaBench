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
struct TYPE_2__ {int /*<<< orphan*/  prompt; } ;

/* Variables and functions */
 TYPE_1__* current_monitor ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC2 (char *buf, int buflen)
{
  FUNC0 ("MON Expecting prompt\n");
  return FUNC1 (current_monitor->prompt, buf, buflen);
}