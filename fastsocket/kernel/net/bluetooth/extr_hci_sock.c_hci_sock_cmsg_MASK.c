#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct compat_timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  incoming ;
typedef  int /*<<< orphan*/  ctv ;
typedef  int __u32 ;
struct TYPE_4__ {int incoming; } ;
struct TYPE_3__ {int cmsg_mask; } ;

/* Variables and functions */
 int HCI_CMSG_DIR ; 
 int HCI_CMSG_TSTAMP ; 
 int MSG_CMSG_COMPAT ; 
 int /*<<< orphan*/  SOL_HCI ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,int /*<<< orphan*/ ,int,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct timeval*) ; 

__attribute__((used)) static inline void FUNC4(struct sock *sk, struct msghdr *msg, struct sk_buff *skb)
{
	__u32 mask = FUNC1(sk)->cmsg_mask;

	if (mask & HCI_CMSG_DIR) {
		int incoming = FUNC0(skb)->incoming;
		FUNC2(msg, SOL_HCI, HCI_CMSG_DIR, sizeof(incoming), &incoming);
	}

	if (mask & HCI_CMSG_TSTAMP) {
		struct timeval tv;
		void *data;
		int len;

		FUNC3(skb, &tv);

		data = &tv;
		len = sizeof(tv);
#ifdef CONFIG_COMPAT
		if (msg->msg_flags & MSG_CMSG_COMPAT) {
			struct compat_timeval ctv;
			ctv.tv_sec = tv.tv_sec;
			ctv.tv_usec = tv.tv_usec;
			data = &ctv;
			len = sizeof(ctv);
		}
#endif

		FUNC2(msg, SOL_HCI, HCI_CMSG_TSTAMP, len, data);
	}
}