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
struct socket {int dummy; } ;
struct inode_security_struct {int initialized; int /*<<< orphan*/  sid; int /*<<< orphan*/  sclass; } ;
struct TYPE_2__ {struct inode_security_struct* i_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET__ACCEPT ; 
 TYPE_1__* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct socket *sock, struct socket *newsock)
{
	int err;
	struct inode_security_struct *isec;
	struct inode_security_struct *newisec;

	err = FUNC1(current, sock, SOCKET__ACCEPT);
	if (err)
		return err;

	newisec = FUNC0(newsock)->i_security;

	isec = FUNC0(sock)->i_security;
	newisec->sclass = isec->sclass;
	newisec->sid = isec->sid;
	newisec->initialized = 1;

	return 0;
}