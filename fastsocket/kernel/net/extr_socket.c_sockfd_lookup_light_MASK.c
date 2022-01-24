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
 int EBADF ; 
 struct file* FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int) ; 
 struct socket* FUNC2 (struct file*,int*) ; 

__attribute__((used)) static struct socket *FUNC3(int fd, int *err, int *fput_needed)
{
	struct file *file;
	struct socket *sock;

	*err = -EBADF;
	file = FUNC0(fd, fput_needed);
	if (file) {
		sock = FUNC2(file, err);
		if (sock)
			return sock;
		FUNC1(file, *fput_needed);
	}
	return NULL;
}