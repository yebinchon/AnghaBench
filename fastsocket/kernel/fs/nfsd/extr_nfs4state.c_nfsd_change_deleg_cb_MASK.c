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
struct file_lock {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int F_UNLCK ; 
 int FUNC0 (struct file_lock**,int) ; 

__attribute__((used)) static
int FUNC1(struct file_lock **onlist, int arg)
{
	if (arg & F_UNLCK)
		return FUNC0(onlist, arg);
	else
		return -EAGAIN;
}