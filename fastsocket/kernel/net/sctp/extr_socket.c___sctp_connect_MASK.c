#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin_port; } ;
union sctp_addr {TYPE_5__ sa; TYPE_1__ v4; } ;
struct sockaddr {int dummy; } ;
struct sock {TYPE_7__* sk_socket; scalar_t__ sk_err; } ;
struct sctp_transport {int dummy; } ;
struct sctp_sock {struct sctp_endpoint* ep; } ;
struct TYPE_10__ {scalar_t__ port; } ;
struct TYPE_11__ {TYPE_2__ bind_addr; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct TYPE_12__ {unsigned short port; } ;
struct sctp_association {scalar_t__ state; int /*<<< orphan*/  assoc_id; TYPE_4__ peer; } ;
struct sctp_af {int sockaddr_len; int /*<<< orphan*/  (* to_sk_daddr ) (union sctp_addr*,struct sock*) ;} ;
typedef  int /*<<< orphan*/  sctp_scope_t ;
typedef  int /*<<< orphan*/  sctp_assoc_t ;
typedef  int /*<<< orphan*/  sa_family_t ;
struct TYPE_16__ {int /*<<< orphan*/  dport; } ;
struct TYPE_15__ {TYPE_6__* file; } ;
struct TYPE_14__ {unsigned int f_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int EACCES ; 
 int EADDRNOTAVAIL ; 
 int EAGAIN ; 
 int EALREADY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESTABLISHED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LISTENING ; 
 unsigned int O_NONBLOCK ; 
 scalar_t__ PROT_SOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sctp_association*,struct sockaddr*,int) ; 
 scalar_t__ SCTP_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  SCTP_UNKNOWN ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short) ; 
 TYPE_8__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (union sctp_addr*,union sctp_addr*,int) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ ) ; 
 struct sctp_transport* FUNC6 (struct sctp_association*,union sctp_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sctp_association*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_association*) ; 
 struct sctp_association* FUNC10 (struct sctp_endpoint*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sctp_endpoint*,union sctp_addr*) ; 
 struct sctp_association* FUNC13 (struct sctp_endpoint*,union sctp_addr*,struct sctp_transport**) ; 
 struct sctp_af* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sctp_association*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (union sctp_addr*) ; 
 struct sctp_sock* FUNC17 (struct sock*) ; 
 scalar_t__ FUNC18 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sctp_association*) ; 
 int FUNC21 (struct sock*,union sctp_addr*,int) ; 
 int FUNC22 (struct sctp_association*,long*) ; 
 long FUNC23 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (union sctp_addr*,struct sock*) ; 

__attribute__((used)) static int FUNC25(struct sock* sk,
			  struct sockaddr *kaddrs,
			  int addrs_size,
			  sctp_assoc_t *assoc_id)
{
	struct sctp_sock *sp;
	struct sctp_endpoint *ep;
	struct sctp_association *asoc = NULL;
	struct sctp_association *asoc2;
	struct sctp_transport *transport;
	union sctp_addr to;
	struct sctp_af *af;
	sctp_scope_t scope;
	long timeo;
	int err = 0;
	int addrcnt = 0;
	int walk_size = 0;
	union sctp_addr *sa_addr = NULL;
	void *addr_buf;
	unsigned short port;
	unsigned int f_flags = 0;

	sp = FUNC17(sk);
	ep = sp->ep;

	/* connect() cannot be done on a socket that is already in ESTABLISHED
	 * state - UDP-style peeled off socket or a TCP-style socket that
	 * is already connected.
	 * It cannot be done even on a TCP-style listening socket.
	 */
	if (FUNC18(sk, ESTABLISHED) ||
	    (FUNC19(sk, TCP) && FUNC18(sk, LISTENING))) {
		err = -EISCONN;
		goto out_free;
	}

	/* Walk through the addrs buffer and count the number of addresses. */
	addr_buf = kaddrs;
	while (walk_size < addrs_size) {
		if (walk_size + sizeof(sa_family_t) > addrs_size) {
			err = -EINVAL;
			goto out_free;
		}

		sa_addr = (union sctp_addr *)addr_buf;
		af = FUNC14(sa_addr->sa.sa_family);

		/* If the address family is not supported or if this address
		 * causes the address buffer to overflow return EINVAL.
		 */
		if (!af || (walk_size + af->sockaddr_len) > addrs_size) {
			err = -EINVAL;
			goto out_free;
		}

		port = FUNC5(sa_addr->v4.sin_port);

		/* Save current address so we can work with it */
		FUNC4(&to, sa_addr, af->sockaddr_len);

		err = FUNC21(sk, &to, af->sockaddr_len);
		if (err)
			goto out_free;

		/* Make sure the destination port is correctly set
		 * in all addresses.
		 */
		if (asoc && asoc->peer.port && asoc->peer.port != port)
			goto out_free;


		/* Check if there already is a matching association on the
		 * endpoint (other than the one created here).
		 */
		asoc2 = FUNC13(ep, &to, &transport);
		if (asoc2 && asoc2 != asoc) {
			if (asoc2->state >= SCTP_STATE_ESTABLISHED)
				err = -EISCONN;
			else
				err = -EALREADY;
			goto out_free;
		}

		/* If we could not find a matching association on the endpoint,
		 * make sure that there is no peeled-off association matching
		 * the peer address even on another socket.
		 */
		if (FUNC12(ep, &to)) {
			err = -EADDRNOTAVAIL;
			goto out_free;
		}

		if (!asoc) {
			/* If a bind() or sctp_bindx() is not called prior to
			 * an sctp_connectx() call, the system picks an
			 * ephemeral port and will choose an address set
			 * equivalent to binding with a wildcard address.
			 */
			if (!ep->base.bind_addr.port) {
				if (FUNC11(sk)) {
					err = -EAGAIN;
					goto out_free;
				}
			} else {
				/*
				 * If an unprivileged user inherits a 1-many
				 * style socket with open associations on a
				 * privileged port, it MAY be permitted to
				 * accept new associations, but it SHOULD NOT
				 * be permitted to open new associations.
				 */
				if (ep->base.bind_addr.port < PROT_SOCK &&
				    !FUNC1(CAP_NET_BIND_SERVICE)) {
					err = -EACCES;
					goto out_free;
				}
			}

			scope = FUNC16(&to);
			asoc = FUNC10(ep, sk, scope, GFP_KERNEL);
			if (!asoc) {
				err = -ENOMEM;
				goto out_free;
			}

			err = FUNC7(asoc, scope,
							      GFP_KERNEL);
			if (err < 0) {
				goto out_free;
			}

		}

		/* Prime the peer's transport structures.  */
		transport = FUNC6(asoc, &to, GFP_KERNEL,
						SCTP_UNKNOWN);
		if (!transport) {
			err = -ENOMEM;
			goto out_free;
		}

		addrcnt++;
		addr_buf += af->sockaddr_len;
		walk_size += af->sockaddr_len;
	}

	/* In case the user of sctp_connectx() wants an association
	 * id back, assign one now.
	 */
	if (assoc_id) {
		err = FUNC8(asoc, GFP_KERNEL);
		if (err < 0)
			goto out_free;
	}

	err = FUNC15(asoc, NULL);
	if (err < 0) {
		goto out_free;
	}

	/* Initialize sk's dport and daddr for getpeername() */
	FUNC3(sk)->dport = FUNC2(asoc->peer.port);
	af = FUNC14(sa_addr->sa.sa_family);
	af->to_sk_daddr(sa_addr, sk);
	sk->sk_err = 0;

	/* in-kernel sockets don't generally have a file allocated to them
	 * if all they do is call sock_create_kern().
	 */
	if (sk->sk_socket->file)
		f_flags = sk->sk_socket->file->f_flags;

	timeo = FUNC23(sk, f_flags & O_NONBLOCK);

	err = FUNC22(asoc, &timeo);
	if ((err == 0 || err == -EINPROGRESS) && assoc_id)
		*assoc_id = asoc->assoc_id;

	/* Don't free association on exit. */
	asoc = NULL;

out_free:

	FUNC0("About to exit __sctp_connect() free asoc: %p"
			  " kaddrs: %p err: %d\n",
			  asoc, kaddrs, err);
	if (asoc) {
		/* sctp_primitive_ASSOCIATE may have added this association
		 * To the hash table, try to unhash it, just in case, its a noop
		 * if it wasn't hashed so we're safe
		 */
		FUNC20(asoc);
		FUNC9(asoc);
	}
	return err;
}