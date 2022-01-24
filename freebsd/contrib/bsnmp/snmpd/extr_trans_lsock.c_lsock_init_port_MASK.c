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
struct tport {int dummy; } ;
struct sockaddr_un {void* sun_len; void* sun_family; int /*<<< orphan*/  sun_path; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int fd; int /*<<< orphan*/ * id; } ;
struct lsock_port {scalar_t__ type; int str_sock; TYPE_1__ input; int /*<<< orphan*/  name; int /*<<< orphan*/  peers; int /*<<< orphan*/ * str_id; } ;
struct lsock_peer {scalar_t__ type; int str_sock; TYPE_1__ input; int /*<<< orphan*/  name; int /*<<< orphan*/  peers; int /*<<< orphan*/ * str_id; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 void* AF_LOCAL ; 
 scalar_t__ EADDRNOTAVAIL ; 
 struct lsock_port* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCAL_CREDS ; 
 scalar_t__ LOCP_STREAM_PRIV ; 
 scalar_t__ LOCP_STREAM_UNPRIV ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_INCONS_NAME ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_RES_UNAVAIL ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 void* FUNC1 (struct sockaddr_un*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,struct lsock_port*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  lsock_input ; 
 int /*<<< orphan*/  lsock_listen_input ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC12(struct tport *tp)
{
	struct lsock_port *p = (struct lsock_port *)tp;
	struct sockaddr_un sa;

	if (p->type == LOCP_STREAM_PRIV || p->type == LOCP_STREAM_UNPRIV) {
		if ((p->str_sock = FUNC9(PF_LOCAL, SOCK_STREAM, 0)) < 0) {
			FUNC11(LOG_ERR, "creating local socket: %m");
			return (SNMP_ERR_RES_UNAVAIL);
		}

		FUNC10(sa.sun_path, p->name, sizeof(sa.sun_path));
		sa.sun_family = AF_LOCAL;
		sa.sun_len = FUNC1(&sa);

		(void)FUNC7(p->name);

		if (FUNC2(p->str_sock, (struct sockaddr *)&sa, sizeof(sa))) {
			if (errno == EADDRNOTAVAIL) {
				FUNC4(p->str_sock);
				p->str_sock = -1;
				return (SNMP_ERR_INCONS_NAME);
			}
			FUNC11(LOG_ERR, "bind: %s %m", p->name);
			FUNC4(p->str_sock);
			p->str_sock = -1;
			return (SNMP_ERR_GENERR);
		}
		if (FUNC3(p->name, 0666) == -1)
			FUNC11(LOG_WARNING, "chmod(%s,0666): %m", p->name);

		if (FUNC6(p->str_sock, 10) == -1) {
			FUNC11(LOG_ERR, "listen: %s %m", p->name);
			(void)FUNC7(p->name);
			FUNC4(p->str_sock);
			p->str_sock = -1;
			return (SNMP_ERR_GENERR);
		}

		p->str_id = FUNC5(p->str_sock, lsock_listen_input, p, NULL);
		if (p->str_id == NULL) {
			(void)FUNC7(p->name);
			FUNC4(p->str_sock);
			p->str_sock = -1;
			return (SNMP_ERR_GENERR);
		}
	} else {
		struct lsock_peer *peer;
		const int on = 1;

		peer = FUNC0(&p->peers);

		if ((peer->input.fd = FUNC9(PF_LOCAL, SOCK_DGRAM, 0)) < 0) {
			FUNC11(LOG_ERR, "creating local socket: %m");
			return (SNMP_ERR_RES_UNAVAIL);
		}

		if (FUNC8(peer->input.fd, 0, LOCAL_CREDS, &on,
		    sizeof(on)) == -1) {
			FUNC11(LOG_ERR, "setsockopt(LOCAL_CREDS): %m");
			FUNC4(peer->input.fd);
			peer->input.fd = -1;
			return (SNMP_ERR_GENERR);
		}

		FUNC10(sa.sun_path, p->name, sizeof(sa.sun_path));
		sa.sun_family = AF_LOCAL;
		sa.sun_len = FUNC1(&sa);

		(void)FUNC7(p->name);

		if (FUNC2(peer->input.fd, (struct sockaddr *)&sa, sizeof(sa))) {
			if (errno == EADDRNOTAVAIL) {
				FUNC4(peer->input.fd);
				peer->input.fd = -1;
				return (SNMP_ERR_INCONS_NAME);
			}
			FUNC11(LOG_ERR, "bind: %s %m", p->name);
			FUNC4(peer->input.fd);
			peer->input.fd = -1;
			return (SNMP_ERR_GENERR);
		}
		if (FUNC3(p->name, 0666) == -1)
			FUNC11(LOG_WARNING, "chmod(%s,0666): %m", p->name);

		peer->input.id = FUNC5(peer->input.fd, lsock_input,
		    peer, NULL);
		if (peer->input.id == NULL) {
			(void)FUNC7(p->name);
			FUNC4(peer->input.fd);
			peer->input.fd = -1;
			return (SNMP_ERR_GENERR);
		}
	}
	return (SNMP_ERR_NOERROR);
}