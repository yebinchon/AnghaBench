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
union cmdret {int* retlongs; } ;
typedef  int u32 ;
struct cmdif {int dummy; } ;

/* Variables and functions */
 union cmdret CMDRET_ZERO ; 
 unsigned int MAX_WRITE_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct cmdif*,int,int,union cmdret*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdif*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdif*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct cmdif *cif, u32 addr, u32 data, u32 mask)
{
	union cmdret rptr = CMDRET_ZERO;
	unsigned int i = MAX_WRITE_RETRY;
	int flag = 1;

	FUNC0(cif, 0x02, addr, &rptr);
	rptr.retlongs[0] &= (~mask);

	while (--i) {
		FUNC1(cif, 0x01, addr);
		FUNC2(cif, 0x02, (rptr.retlongs[0] | data));
		FUNC0(cif, 0x02, addr, &rptr);
		if ((rptr.retlongs[0] & data) == data) {
			flag = 0;
			break;
		} else
			rptr.retlongs[0] &= ~mask;
	}
	FUNC3("send arm 0x%x 0x%x 0x%x return %d\n", addr, data, mask,
		    flag);
	return flag;
}