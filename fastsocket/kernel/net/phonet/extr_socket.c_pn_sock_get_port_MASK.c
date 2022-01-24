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
struct sockaddr_pn {int /*<<< orphan*/  spn_family; } ;
struct sock {int dummy; } ;
struct pn_sock {int /*<<< orphan*/  sobject; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PHONET ; 
 int EADDRINUSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_pn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (struct net*,struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned short) ; 
 struct pn_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_pn*,unsigned short) ; 
 int /*<<< orphan*/  port_mutex ; 
 struct net* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

int FUNC11(struct sock *sk, unsigned short sport)
{
	static int port_cur;
	struct net *net = FUNC9(sk);
	struct pn_sock *pn = FUNC7(sk);
	struct sockaddr_pn try_sa;
	struct sock *tmpsk;

	FUNC1(&try_sa, 0, sizeof(struct sockaddr_pn));
	try_sa.spn_family = AF_PHONET;
	FUNC0(!FUNC2(&port_mutex));
	if (!sport) {
		/* search free port */
		int port, pmin, pmax;

		FUNC3(&pmin, &pmax);
		for (port = pmin; port <= pmax; port++) {
			port_cur++;
			if (port_cur < pmin || port_cur > pmax)
				port_cur = pmin;

			FUNC8(&try_sa, port_cur);
			tmpsk = FUNC5(net, &try_sa);
			if (tmpsk == NULL) {
				sport = port_cur;
				goto found;
			} else
				FUNC10(tmpsk);
		}
	} else {
		/* try to find specific port */
		FUNC8(&try_sa, sport);
		tmpsk = FUNC5(net, &try_sa);
		if (tmpsk == NULL)
			/* No sock there! We can use that port... */
			goto found;
		else
			FUNC10(tmpsk);
	}
	/* the port must be in use already */
	return -EADDRINUSE;

found:
	pn->sobject = FUNC6(FUNC4(pn->sobject), sport);
	return 0;
}