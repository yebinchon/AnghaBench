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
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned int,unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC2(unsigned int fd, unsigned int cmd,
			      unsigned long arg, struct file *f)
{
	return FUNC1(fd, cmd, (unsigned long)FUNC0(arg));
}