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
struct pid {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

pid_t FUNC2(struct pid *pid)
{
	return FUNC0(pid, FUNC1(current));
}