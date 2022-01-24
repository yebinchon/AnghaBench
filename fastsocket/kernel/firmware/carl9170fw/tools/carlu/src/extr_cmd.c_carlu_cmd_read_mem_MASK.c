#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct carlu {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_CMD_RREG ; 
 int FUNC0 (struct carlu*,int /*<<< orphan*/ ,void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 

int FUNC3(struct carlu *ar, const uint32_t _addr,
		       uint32_t *val)
{
	int err;
	__le32 msg, addr = { FUNC1(_addr) };
	err = FUNC0(ar, CARL9170_CMD_RREG, (void *) &addr, sizeof(addr),
			  (void *) &msg, sizeof(msg));

	*val = FUNC2(msg);
	return err;
}