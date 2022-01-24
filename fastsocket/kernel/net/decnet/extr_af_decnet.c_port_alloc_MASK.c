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
struct sock {int dummy; } ;
struct dn_scp {int /*<<< orphan*/  addrloc; } ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short) ; 

__attribute__((used)) static unsigned short FUNC3(struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);
static unsigned short port = 0x2000;
	unsigned short i_port = port;

	while(FUNC1(FUNC2(++port)) != 0) {
		if (port == i_port)
			return 0;
	}

	scp->addrloc = FUNC2(port);

	return 1;
}