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
struct socket {scalar_t__ type; int /*<<< orphan*/ * ops; } ;
struct sock {int sk_protocol; } ;
struct nr_sock {int bpqext; int /*<<< orphan*/  state; int /*<<< orphan*/  window; void* idle; void* t4; void* n2; void* t2; void* t1; int /*<<< orphan*/  frag_queue; int /*<<< orphan*/  reseq_queue; int /*<<< orphan*/  ack_queue; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int ENOMEM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NR_STATE_0 ; 
 int /*<<< orphan*/  PF_NETROM ; 
 scalar_t__ SOCK_SEQPACKET ; 
 struct net init_net ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  nr_proto ; 
 int /*<<< orphan*/  nr_proto_ops ; 
 struct nr_sock* FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  sysctl_netrom_transport_acknowledge_delay ; 
 int /*<<< orphan*/  sysctl_netrom_transport_busy_delay ; 
 int /*<<< orphan*/  sysctl_netrom_transport_maximum_tries ; 
 int /*<<< orphan*/  sysctl_netrom_transport_no_activity_timeout ; 
 int /*<<< orphan*/  sysctl_netrom_transport_requested_window_size ; 
 int /*<<< orphan*/  sysctl_netrom_transport_timeout ; 

__attribute__((used)) static int FUNC6(struct net *net, struct socket *sock, int protocol,
		     int kern)
{
	struct sock *sk;
	struct nr_sock *nr;

	if (net != &init_net)
		return -EAFNOSUPPORT;

	if (sock->type != SOCK_SEQPACKET || protocol != 0)
		return -ESOCKTNOSUPPORT;

	sk = FUNC3(net, PF_NETROM, GFP_ATOMIC, &nr_proto);
	if (sk  == NULL)
		return -ENOMEM;

	nr = FUNC2(sk);

	FUNC5(sock, sk);

	sock->ops    = &nr_proto_ops;
	sk->sk_protocol = protocol;

	FUNC4(&nr->ack_queue);
	FUNC4(&nr->reseq_queue);
	FUNC4(&nr->frag_queue);

	FUNC1(sk);

	nr->t1     =
		FUNC0(sysctl_netrom_transport_timeout);
	nr->t2     =
		FUNC0(sysctl_netrom_transport_acknowledge_delay);
	nr->n2     =
		FUNC0(sysctl_netrom_transport_maximum_tries);
	nr->t4     =
		FUNC0(sysctl_netrom_transport_busy_delay);
	nr->idle   =
		FUNC0(sysctl_netrom_transport_no_activity_timeout);
	nr->window = sysctl_netrom_transport_requested_window_size;

	nr->bpqext = 1;
	nr->state  = NR_STATE_0;

	return 0;
}