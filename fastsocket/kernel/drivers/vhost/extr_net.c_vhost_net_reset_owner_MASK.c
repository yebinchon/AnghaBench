#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct vhost_net {TYPE_1__ dev; } ;
struct socket {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (TYPE_1__*) ; 
 long FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC6 (struct vhost_net*,struct socket**,struct socket**) ; 

__attribute__((used)) static long FUNC7(struct vhost_net *n)
{
	struct socket *tx_sock = NULL;
	struct socket *rx_sock = NULL;
	long err;
	FUNC1(&n->dev.mutex);
	err = FUNC3(&n->dev);
	if (err)
		goto done;
	FUNC6(n, &tx_sock, &rx_sock);
	FUNC5(n);
	err = FUNC4(&n->dev);
done:
	FUNC2(&n->dev.mutex);
	if (tx_sock)
		FUNC0(tx_sock->file);
	if (rx_sock)
		FUNC0(rx_sock->file);
	return err;
}