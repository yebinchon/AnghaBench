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
struct vhost_net {int /*<<< orphan*/  dev; } ;
struct socket {int /*<<< orphan*/  file; } ;
struct inode {int dummy; } ;
struct file {struct vhost_net* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_net*,struct socket**,struct socket**) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *f)
{
	struct vhost_net *n = f->private_data;
	struct socket *tx_sock;
	struct socket *rx_sock;

	FUNC4(n, &tx_sock, &rx_sock);
	FUNC3(n);
	FUNC2(&n->dev);
	if (tx_sock)
		FUNC0(tx_sock->file);
	if (rx_sock)
		FUNC0(rx_sock->file);
	/* We do an extra flush before freeing memory,
	 * since jobs can re-queue themselves. */
	FUNC3(n);
	FUNC1(n);
	return 0;
}