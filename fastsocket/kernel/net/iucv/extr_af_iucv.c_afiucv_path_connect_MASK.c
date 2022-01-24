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
typedef  int /*<<< orphan*/  user_data ;
struct socket {struct sock* sk; } ;
struct sockaddr_iucv {int /*<<< orphan*/  siucv_user_id; int /*<<< orphan*/  siucv_name; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct iucv_sock {int /*<<< orphan*/ * path; int /*<<< orphan*/  msglimit; int /*<<< orphan*/  src_name; } ;
struct TYPE_2__ {int (* path_connect ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int EACCES ; 
 int EAGAIN ; 
 int ECONNREFUSED ; 
 int ENETUNREACH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IUCV_IPRMDATA ; 
 int /*<<< orphan*/  af_iucv_handler ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct iucv_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* pr_iucv ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,struct sock*) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, struct sockaddr *addr)
{
	struct sockaddr_iucv *sa = (struct sockaddr_iucv *) addr;
	struct sock *sk = sock->sk;
	struct iucv_sock *iucv = FUNC4(sk);
	unsigned char user_data[16];
	int err;

	FUNC1(user_data, sa->siucv_name);
	FUNC5(user_data, iucv->src_name);
	FUNC0(user_data, sizeof(user_data));

	/* Create path. */
	iucv->path = FUNC2(iucv->msglimit,
				     IUCV_IPRMDATA, GFP_KERNEL);
	if (!iucv->path) {
		err = -ENOMEM;
		goto done;
	}
	err = pr_iucv->path_connect(iucv->path, &af_iucv_handler,
				    sa->siucv_user_id, NULL, user_data,
				    sk);
	if (err) {
		FUNC3(iucv->path);
		iucv->path = NULL;
		switch (err) {
		case 0x0b:	/* Target communicator is not logged on */
			err = -ENETUNREACH;
			break;
		case 0x0d:	/* Max connections for this guest exceeded */
		case 0x0e:	/* Max connections for target guest exceeded */
			err = -EAGAIN;
			break;
		case 0x0f:	/* Missing IUCV authorization */
			err = -EACCES;
			break;
		default:
			err = -ECONNREFUSED;
			break;
		}
	}
done:
	return err;
}