#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_3__* sk; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int /*<<< orphan*/  sid; int /*<<< orphan*/  peer_sid; } ;
struct inode_security_struct {int /*<<< orphan*/  sid; int /*<<< orphan*/  sclass; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct TYPE_6__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct TYPE_8__ {struct inode_security_struct* i_security; } ;
struct TYPE_7__ {struct sk_security_struct* sk_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET ; 
 TYPE_4__* FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  UNIX_STREAM_SOCKET__CONNECTTO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct socket *sock,
					      struct socket *other,
					      struct sock *newsk)
{
	struct sk_security_struct *ssec;
	struct inode_security_struct *isec;
	struct inode_security_struct *other_isec;
	struct common_audit_data ad;
	int err;

	isec = FUNC1(sock)->i_security;
	other_isec = FUNC1(other)->i_security;

	FUNC0(&ad, NET);
	ad.u.net.sk = other->sk;

	err = FUNC2(isec->sid, other_isec->sid,
			   isec->sclass,
			   UNIX_STREAM_SOCKET__CONNECTTO, &ad);
	if (err)
		return err;

	/* connecting socket */
	ssec = sock->sk->sk_security;
	ssec->peer_sid = other_isec->sid;

	/* server child socket */
	ssec = newsk->sk_security;
	ssec->peer_sid = isec->sid;
	err = FUNC3(other_isec->sid, ssec->peer_sid, &ssec->sid);

	return err;
}