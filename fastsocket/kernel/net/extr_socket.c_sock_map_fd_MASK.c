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
struct socket {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct file*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct socket*,struct file**,int) ; 

int FUNC3(struct socket *sock, int flags)
{
	struct file *newfile;
	int fd = FUNC2(sock, &newfile, flags);

	if (FUNC1(fd >= 0))
		FUNC0(fd, newfile);

	return fd;
}