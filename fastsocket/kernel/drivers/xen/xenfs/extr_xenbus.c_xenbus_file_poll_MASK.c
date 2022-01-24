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
struct xenbus_file_priv {int /*<<< orphan*/  read_buffers; int /*<<< orphan*/  read_waitq; } ;
struct file {struct xenbus_file_priv* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *file, poll_table *wait)
{
	struct xenbus_file_priv *u = file->private_data;

	FUNC1(file, &u->read_waitq, wait);
	if (!FUNC0(&u->read_buffers))
		return POLLIN | POLLRDNORM;
	return 0;
}