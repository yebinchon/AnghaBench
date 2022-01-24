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
struct vhost_virtqueue {int /*<<< orphan*/  mutex; struct socket* private_data; } ;
struct vhost_net {int dummy; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_net*,struct vhost_virtqueue*) ; 

__attribute__((used)) static struct socket *FUNC4(struct vhost_net *n,
					struct vhost_virtqueue *vq)
{
	struct socket *sock;

	FUNC0(&vq->mutex);
	sock = vq->private_data;
	FUNC3(n, vq);
	FUNC2(vq->private_data, NULL);
	FUNC1(&vq->mutex);
	return sock;
}