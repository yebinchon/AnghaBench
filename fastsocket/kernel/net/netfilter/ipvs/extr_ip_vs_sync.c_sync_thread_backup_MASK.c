#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ip_vs_sync_thread_data {struct ip_vs_sync_thread_data* buf; TYPE_2__* sock; } ;
struct TYPE_5__ {TYPE_1__* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/ * sk_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  ip_vs_backup_mcast_ifn ; 
 int /*<<< orphan*/  ip_vs_backup_syncid ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_sync_thread_data*,int) ; 
 int FUNC1 (TYPE_2__*,struct ip_vs_sync_thread_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_sync_thread_data*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  sync_recv_mesg_maxlen ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(void *data)
{
	struct ip_vs_sync_thread_data *tinfo = data;
	int len;

	FUNC7("sync thread started: state = BACKUP, mcast_ifn = %s, "
		"syncid = %d\n",
		ip_vs_backup_mcast_ifn, ip_vs_backup_syncid);

	while (!FUNC3()) {
		FUNC10(*tinfo->sock->sk->sk_sleep,
			 !FUNC8(&tinfo->sock->sk->sk_receive_queue)
			 || FUNC3());

		/* do we have data now? */
		while (!FUNC8(&(tinfo->sock->sk->sk_receive_queue))) {
			len = FUNC1(tinfo->sock, tinfo->buf,
					sync_recv_mesg_maxlen);
			if (len <= 0) {
				FUNC6("receiving message error\n");
				break;
			}

			/* disable bottom half, because it accesses the data
			   shared by softirq while getting/creating conns */
			FUNC4();
			FUNC0(tinfo->buf, len);
			FUNC5();
		}
	}

	/* release the sending multicast socket */
	FUNC9(tinfo->sock);
	FUNC2(tinfo->buf);
	FUNC2(tinfo);

	return 0;
}