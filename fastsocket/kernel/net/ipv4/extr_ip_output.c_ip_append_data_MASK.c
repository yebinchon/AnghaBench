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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct rtable {int dummy; } ;
struct ipcm_cookie {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  cork; } ;
struct inet_cork {int dummy; } ;

/* Variables and functions */
 unsigned int MSG_PROBE ; 
 int FUNC0 (struct sock*,int /*<<< orphan*/ *,struct inet_cork*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int,int,struct ipcm_cookie*,unsigned int) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,struct inet_cork*,struct ipcm_cookie*,struct rtable**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct sock *sk,
		   int getfrag(void *from, char *to, int offset, int len,
			       int odd, struct sk_buff *skb),
		   void *from, int length, int transhdrlen,
		   struct ipcm_cookie *ipc, struct rtable **rtp,
		   unsigned int flags)
{
	struct inet_sock *inet = FUNC1(sk);
	int err;

	if (flags&MSG_PROBE)
		return 0;

	if (FUNC3(&sk->sk_write_queue)) {
		err = FUNC2(sk, (struct inet_cork *)&inet->cork, ipc,
				    rtp);
		if (err)
			return err;
	} else {
		transhdrlen = 0;
	}

	return FUNC0(sk, &sk->sk_write_queue,
				(struct inet_cork *)&inet->cork, getfrag,
				from, length, transhdrlen, ipc, flags);
}