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
struct r8a66597_td {int maxpacket; int /*<<< orphan*/  address; TYPE_1__* urb; } ;
struct r8a66597 {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ setup_packet; } ;

/* Variables and functions */
 unsigned long DCPCTR ; 
 unsigned long DCPMAXP ; 
 unsigned long INTSTS1 ; 
 int SACK ; 
 int SIGN ; 
 int SUREQ ; 
 unsigned long USBREQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct r8a66597 *r8a66597,
				 struct r8a66597_td *td)
{
	int i;
	__le16 *p = (__le16 *)td->urb->setup_packet;
	unsigned long setup_addr = USBREQ;

	FUNC2(r8a66597, FUNC1(td->address) | td->maxpacket,
		       DCPMAXP);
	FUNC2(r8a66597, ~(SIGN | SACK), INTSTS1);

	for (i = 0; i < 4; i++) {
		FUNC2(r8a66597, FUNC0(p[i]), setup_addr);
		setup_addr += 2;
	}
	FUNC2(r8a66597, SUREQ, DCPCTR);
}