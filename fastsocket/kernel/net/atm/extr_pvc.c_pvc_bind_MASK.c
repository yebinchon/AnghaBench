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
struct socket {struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ vpi; scalar_t__ vci; int /*<<< orphan*/  itf; } ;
struct sockaddr_atmpvc {scalar_t__ sap_family; TYPE_1__ sap_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct atm_vcc {scalar_t__ vpi; scalar_t__ vci; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ AF_ATMPVC ; 
 struct atm_vcc* FUNC0 (struct socket*) ; 
 scalar_t__ ATM_VCI_UNSPEC ; 
 int /*<<< orphan*/  ATM_VF_HASQOS ; 
 int /*<<< orphan*/  ATM_VF_PARTIAL ; 
 scalar_t__ ATM_VPI_UNSPEC ; 
 int EAFNOSUPPORT ; 
 int EBADFD ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct socket*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct socket *sock,struct sockaddr *sockaddr,
    int sockaddr_len)
{
	struct sock *sk = sock->sk;
	struct sockaddr_atmpvc *addr;
	struct atm_vcc *vcc;
	int error;

	if (sockaddr_len != sizeof(struct sockaddr_atmpvc)) return -EINVAL;
	addr = (struct sockaddr_atmpvc *) sockaddr;
	if (addr->sap_family != AF_ATMPVC) return -EAFNOSUPPORT;
	FUNC1(sk);
	vcc = FUNC0(sock);
	if (!FUNC3(ATM_VF_HASQOS, &vcc->flags)) {
		error = -EBADFD;
		goto out;
	}
	if (FUNC3(ATM_VF_PARTIAL,&vcc->flags)) {
		if (vcc->vpi != ATM_VPI_UNSPEC) addr->sap_addr.vpi = vcc->vpi;
		if (vcc->vci != ATM_VCI_UNSPEC) addr->sap_addr.vci = vcc->vci;
	}
	error = FUNC4(sock, addr->sap_addr.itf, addr->sap_addr.vpi,
			    addr->sap_addr.vci);
out:
	FUNC2(sk);
	return error;
}