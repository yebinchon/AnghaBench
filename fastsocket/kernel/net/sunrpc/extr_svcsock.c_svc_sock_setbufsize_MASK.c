#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk; } ;
typedef  int /*<<< orphan*/  snd ;
typedef  int /*<<< orphan*/  rcv ;
typedef  int /*<<< orphan*/  mm_segment_t ;
struct TYPE_4__ {unsigned int sk_sndbuf; unsigned int sk_rcvbuf; int /*<<< orphan*/  (* sk_write_space ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_DS ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct socket *sock, unsigned int snd,
				unsigned int rcv)
{
#if 0
	mm_segment_t	oldfs;
	oldfs = get_fs(); set_fs(KERNEL_DS);
	sock_setsockopt(sock, SOL_SOCKET, SO_SNDBUF,
			(char*)&snd, sizeof(snd));
	sock_setsockopt(sock, SOL_SOCKET, SO_RCVBUF,
			(char*)&rcv, sizeof(rcv));
#else
	/* sock_setsockopt limits use to sysctl_?mem_max,
	 * which isn't acceptable.  Until that is made conditional
	 * on not having CAP_SYS_RESOURCE or similar, we go direct...
	 * DaveM said I could!
	 */
	FUNC1(sock->sk);
	sock->sk->sk_sndbuf = snd * 2;
	sock->sk->sk_rcvbuf = rcv * 2;
	sock->sk->sk_write_space(sock->sk);
	FUNC2(sock->sk);
#endif
}