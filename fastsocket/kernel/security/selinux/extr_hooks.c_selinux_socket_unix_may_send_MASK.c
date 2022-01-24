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
struct socket {int /*<<< orphan*/  sk; } ;
struct inode_security_struct {int /*<<< orphan*/  sclass; int /*<<< orphan*/  sid; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;
struct TYPE_5__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct TYPE_6__ {struct inode_security_struct* i_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET ; 
 int /*<<< orphan*/  SOCKET__SENDTO ; 
 TYPE_3__* FUNC1 (struct socket*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock,
					struct socket *other)
{
	struct inode_security_struct *isec;
	struct inode_security_struct *other_isec;
	struct common_audit_data ad;
	int err;

	isec = FUNC1(sock)->i_security;
	other_isec = FUNC1(other)->i_security;

	FUNC0(&ad, NET);
	ad.u.net.sk = other->sk;

	err = FUNC2(isec->sid, other_isec->sid,
			   isec->sclass, SOCKET__SENDTO, &ad);
	if (err)
		return err;

	return 0;
}