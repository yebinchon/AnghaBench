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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_SIG_FORCED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct task_struct*) ; 

void
FUNC1(int sig, struct task_struct *t)
{
	FUNC0(sig, SEND_SIG_FORCED, t);
}