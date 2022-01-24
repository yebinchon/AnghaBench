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
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtable {int dummy; } ;
struct ipcm_cookie {int dummy; } ;
struct inet_cork {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 unsigned int MSG_PROBE ; 
 int FUNC1 (struct sock*,struct sk_buff_head*,struct inet_cork*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int,int,struct ipcm_cookie*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff_head*,struct inet_cork*) ; 
 struct sk_buff* FUNC3 (struct sock*,struct sk_buff_head*,struct inet_cork*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*) ; 
 int FUNC5 (struct sock*,struct inet_cork*,struct ipcm_cookie*,struct rtable**) ; 

struct sk_buff *FUNC6(struct sock *sk,
			    int getfrag(void *from, char *to, int offset,
					int len, int odd, struct sk_buff *skb),
			    void *from, int length, int transhdrlen,
			    struct ipcm_cookie *ipc, struct rtable **rtp,
			    unsigned int flags)
{
	struct inet_cork cork = {};
	struct sk_buff_head queue;
	int err;

	if (flags & MSG_PROBE)
		return NULL;

	FUNC4(&queue);

	err = FUNC5(sk, &cork, ipc, rtp);
	if (err)
		return FUNC0(err);

	err = FUNC1(sk, &queue, &cork, getfrag,
			       from, length, transhdrlen, ipc, flags);
	if (err) {
		FUNC2(sk, &queue, &cork);
		return FUNC0(err);
	}

	return FUNC3(sk, &queue, &cork);
}