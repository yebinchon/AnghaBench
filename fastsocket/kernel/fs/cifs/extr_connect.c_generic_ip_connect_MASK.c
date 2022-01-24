#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
struct socket {TYPE_3__* sk; TYPE_2__* ops; } ;
struct sockaddr_in6 {unsigned short sin6_port; } ;
struct sockaddr_in {unsigned short sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int ss_family; } ;
struct TCP_Server_Info {scalar_t__ tcp_nodelay; scalar_t__ noautotune; struct socket* ssocket; TYPE_1__ dstaddr; } ;
struct TYPE_6__ {int sk_rcvtimeo; int sk_sndtimeo; int sk_sndbuf; int sk_rcvbuf; int /*<<< orphan*/  sk_allocation; } ;
struct TYPE_5__ {int (* connect ) (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int HZ ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  RFC1001_PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_TCP ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC0 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct TCP_Server_Info*) ; 
 int FUNC7 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int FUNC10 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct TCP_Server_Info *server)
{
	int rc = 0;
	unsigned short int sport;
	int slen, sfamily;
	struct socket *socket = server->ssocket;
	struct sockaddr *saddr;

	saddr = (struct sockaddr *) &server->dstaddr;

	if (server->dstaddr.ss_family == AF_INET6) {
		sport = ((struct sockaddr_in6 *) saddr)->sin6_port;
		slen = sizeof(struct sockaddr_in6);
		sfamily = AF_INET6;
	} else {
		sport = ((struct sockaddr_in *) saddr)->sin_port;
		slen = sizeof(struct sockaddr_in);
		sfamily = AF_INET;
	}

	if (socket == NULL) {
		rc = FUNC8(sfamily, SOCK_STREAM,
				      IPPROTO_TCP, &socket);
		if (rc < 0) {
			FUNC1(1, "Error %d creating socket", rc);
			server->ssocket = NULL;
			return rc;
		}

		/* BB other socket options to set KEEPALIVE, NODELAY? */
		FUNC2(1, "Socket created");
		server->ssocket = socket;
		socket->sk->sk_allocation = GFP_NOFS;
		if (sfamily == AF_INET6)
			FUNC4(socket);
		else
			FUNC3(socket);
	}

	rc = FUNC0(server);
	if (rc < 0)
		return rc;

	rc = socket->ops->connect(socket, saddr, slen, 0);
	if (rc < 0) {
		FUNC2(1, "Error %d connecting to server", rc);
		FUNC9(socket);
		server->ssocket = NULL;
		return rc;
	}

	/*
	 * Eventually check for other socket options to change from
	 * the default. sock_setsockopt not used because it expects
	 * user space buffer
	 */
	socket->sk->sk_rcvtimeo = 7 * HZ;
	socket->sk->sk_sndtimeo = 5 * HZ;

	/* make the bufsizes depend on wsize/rsize and max requests */
	if (server->noautotune) {
		if (socket->sk->sk_sndbuf < (200 * 1024))
			socket->sk->sk_sndbuf = 200 * 1024;
		if (socket->sk->sk_rcvbuf < (140 * 1024))
			socket->sk->sk_rcvbuf = 140 * 1024;
	}

	if (server->tcp_nodelay) {
		int val = 1;
		rc = FUNC7(socket, SOL_TCP, TCP_NODELAY,
				(char *)&val, sizeof(val));
		if (rc)
			FUNC2(1, "set TCP_NODELAY socket option error %d", rc);
	}

	 FUNC2(1, "sndbuf %d rcvbuf %d rcvtimeo 0x%lx",
		 socket->sk->sk_sndbuf,
		 socket->sk->sk_rcvbuf, socket->sk->sk_rcvtimeo);

	if (sport == FUNC5(RFC1001_PORT))
		rc = FUNC6(server);

	return rc;
}