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
struct sock {int dummy; } ;
struct iucv_sock {scalar_t__ msglimit; int /*<<< orphan*/  src_name; int /*<<< orphan*/ * src_user_id; } ;
typedef  int /*<<< orphan*/  query_buffer ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  autobind_name; } ;

/* Variables and functions */
 int EPROTO ; 
 scalar_t__ IUCV_QUEUELEN_DEFAULT ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int*) ; 
 struct iucv_sock* FUNC3 (struct sock*) ; 
 TYPE_1__ iucv_sk_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sock *sk)
{
	struct iucv_sock *iucv = FUNC3(sk);
	char query_buffer[80];
	char name[12];
	int err = 0;

	/* Set the userid and name */
	FUNC2("QUERY USERID", query_buffer, sizeof(query_buffer), &err);
	if (FUNC6(err))
		return -EPROTO;

	FUNC4(iucv->src_user_id, query_buffer, 8);

	FUNC7(&iucv_sk_list.lock);

	FUNC5(name, "%08x", FUNC1(&iucv_sk_list.autobind_name));
	while (FUNC0(name)) {
		FUNC5(name, "%08x",
			FUNC1(&iucv_sk_list.autobind_name));
	}

	FUNC8(&iucv_sk_list.lock);

	FUNC4(&iucv->src_name, name, 8);

	if (!iucv->msglimit)
		iucv->msglimit = IUCV_QUEUELEN_DEFAULT;

	return err;
}