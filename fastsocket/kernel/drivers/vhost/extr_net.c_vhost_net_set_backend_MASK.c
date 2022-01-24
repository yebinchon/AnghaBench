#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vhost_virtqueue {int /*<<< orphan*/  mutex; struct vhost_ubuf_ref* private_data; struct vhost_ubuf_ref* ubufs; } ;
struct vhost_ubuf_ref {int /*<<< orphan*/  file; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct vhost_net {TYPE_1__ dev; struct vhost_virtqueue* vqs; } ;
struct socket {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOBUFS ; 
 scalar_t__ FUNC0 (struct vhost_ubuf_ref*) ; 
 int FUNC1 (struct vhost_ubuf_ref*) ; 
 unsigned int VHOST_NET_VQ_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vhost_ubuf_ref* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vhost_ubuf_ref*,struct vhost_ubuf_ref*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC9 (struct vhost_net*,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC10 (struct vhost_net*,struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC11 (struct vhost_net*,unsigned int) ; 
 scalar_t__ FUNC12 (struct vhost_ubuf_ref*) ; 
 struct vhost_ubuf_ref* FUNC13 (struct vhost_virtqueue*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vhost_ubuf_ref*) ; 
 int /*<<< orphan*/  FUNC15 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC16 (struct vhost_virtqueue*) ; 

__attribute__((used)) static long FUNC17(struct vhost_net *n, unsigned index, int fd)
{
	struct socket *sock, *oldsock;
	struct vhost_virtqueue *vq;
	struct vhost_ubuf_ref *ubufs, *oldubufs = NULL;
	int r;

	FUNC4(&n->dev.mutex);
	r = FUNC7(&n->dev);
	if (r)
		goto err;

	if (index >= VHOST_NET_VQ_MAX) {
		r = -ENOBUFS;
		goto err;
	}
	vq = n->vqs + index;
	FUNC4(&vq->mutex);

	/* Verify that ring has been setup correctly. */
	if (!FUNC15(vq)) {
		r = -EFAULT;
		goto err_vq;
	}
	sock = FUNC3(fd);
	if (FUNC0(sock)) {
		r = FUNC1(sock);
		goto err_vq;
	}

	/* start polling new socket */
	oldsock = vq->private_data;
	if (sock != oldsock) {
		ubufs = FUNC13(vq, sock && FUNC12(sock));
		if (FUNC0(ubufs)) {
			r = FUNC1(ubufs);
			goto err_ubufs;
		}
		oldubufs = vq->ubufs;
		vq->ubufs = ubufs;
		FUNC9(n, vq);
		FUNC6(vq->private_data, sock);
		FUNC10(n, vq);

		r = FUNC8(vq);
		if (r)
			goto err_vq;
	}

	FUNC5(&vq->mutex);

	if (oldubufs) {
		FUNC14(oldubufs);
		FUNC4(&vq->mutex);
		FUNC16(vq);
		FUNC5(&vq->mutex);
	}

	if (oldsock) {
		FUNC11(n, index);
		FUNC2(oldsock->file);
	}

	FUNC5(&n->dev.mutex);
	return 0;

err_ubufs:
	FUNC2(sock->file);
err_vq:
	FUNC5(&vq->mutex);
err:
	FUNC5(&n->dev.mutex);
	return r;
}