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
typedef  int u8 ;
struct l2cap_conf_opt {int type; int len; scalar_t__ val; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,unsigned long) ; 
 scalar_t__ L2CAP_CONF_OPT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,int) ; 

__attribute__((used)) static void FUNC4(void **ptr, u8 type, u8 len, unsigned long val)
{
	struct l2cap_conf_opt *opt = *ptr;

	FUNC0("type 0x%2.2x len %d val 0x%lx", type, len, val);

	opt->type = type;
	opt->len  = len;

	switch (len) {
	case 1:
		*((u8 *) opt->val)  = val;
		break;

	case 2:
		*((__le16 *) opt->val) = FUNC1(val);
		break;

	case 4:
		*((__le32 *) opt->val) = FUNC2(val);
		break;

	default:
		FUNC3(opt->val, (void *) val, len);
		break;
	}

	*ptr += L2CAP_CONF_OPT_SIZE + len;
}