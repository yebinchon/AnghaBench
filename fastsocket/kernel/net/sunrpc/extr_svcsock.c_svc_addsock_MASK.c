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
struct TYPE_5__ {int /*<<< orphan*/  xpt_list; int /*<<< orphan*/  xpt_flags; } ;
struct svc_sock {TYPE_2__ sk_xprt; int /*<<< orphan*/  sk_sock; } ;
struct svc_serv {int /*<<< orphan*/  sv_lock; int /*<<< orphan*/  sv_permsocks; } ;
struct socket {scalar_t__ state; TYPE_1__* sk; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ sk_family; scalar_t__ sk_protocol; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EISCONN ; 
 int ENOENT ; 
 int EPROTONOSUPPORT ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ SS_UNCONNECTED ; 
 int /*<<< orphan*/  SVC_SOCK_DEFAULTS ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  XPT_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct socket* FUNC4 (int const,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct svc_sock*,char*,size_t const) ; 
 struct svc_sock* FUNC9 (struct svc_serv*,struct socket*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct svc_serv *serv, const int fd, char *name_return,
		const size_t len)
{
	int err = 0;
	struct socket *so = FUNC4(fd, &err);
	struct svc_sock *svsk = NULL;

	if (!so)
		return err;
	if ((so->sk->sk_family != PF_INET) && (so->sk->sk_family != PF_INET6))
		err =  -EAFNOSUPPORT;
	else if (so->sk->sk_protocol != IPPROTO_TCP &&
	    so->sk->sk_protocol != IPPROTO_UDP)
		err =  -EPROTONOSUPPORT;
	else if (so->state > SS_UNCONNECTED)
		err = -EISCONN;
	else {
		if (!FUNC12(THIS_MODULE))
			err = -ENOENT;
		else
			svsk = FUNC9(serv, so, &err,
						SVC_SOCK_DEFAULTS);
		if (svsk) {
			struct sockaddr_storage addr;
			struct sockaddr *sin = (struct sockaddr *)&addr;
			int salen;
			if (FUNC1(svsk->sk_sock, sin, &salen) == 0)
				FUNC11(&svsk->sk_xprt, sin, salen);
			FUNC0(XPT_TEMP, &svsk->sk_xprt.xpt_flags);
			FUNC6(&serv->sv_lock);
			FUNC2(&svsk->sk_xprt.xpt_list, &serv->sv_permsocks);
			FUNC7(&serv->sv_lock);
			FUNC10(&svsk->sk_xprt);
			err = 0;
		} else
			FUNC3(THIS_MODULE);
	}
	if (err) {
		FUNC5(so);
		return err;
	}
	return FUNC8(svsk, name_return, len);
}