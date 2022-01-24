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
struct file {int /*<<< orphan*/  private_data; } ;
struct eventfd_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 struct eventfd_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 struct file* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 

struct eventfd_ctx *FUNC4(int fd)
{
	struct file *file;
	struct eventfd_ctx *ctx;

	file = FUNC2(fd);
	if (FUNC0(file))
		return (struct eventfd_ctx *) file;
	ctx = FUNC1(file->private_data);
	FUNC3(file);

	return ctx;
}