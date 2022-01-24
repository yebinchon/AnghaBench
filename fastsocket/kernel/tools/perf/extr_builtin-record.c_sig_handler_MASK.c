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

/* Variables and functions */
 int SIGCHLD ; 
 int child_finished ; 
 int done ; 
 int signr ; 

__attribute__((used)) static void FUNC0(int sig)
{
	if (sig == SIGCHLD)
		child_finished = 1;

	done = 1;
	signr = sig;
}