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
struct uwb_rc_evt_dev_addr_mgmt {int /*<<< orphan*/  baAddr; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mac_addr {int* data; } ;
struct uwb_dev_addr {int* data; } ;
typedef  enum uwb_addr_type { ____Placeholder_uwb_addr_type } uwb_addr_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
#define  UWB_ADDR_DEV 129 
#define  UWB_ADDR_MAC 128 
 int /*<<< orphan*/  FUNC1 (int**,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct uwb_rc*,int,int*,struct uwb_rc_evt_dev_addr_mgmt*) ; 

__attribute__((used)) static int FUNC3(struct uwb_rc *rc,
		    void *_addr, enum uwb_addr_type type)
{
	int result;
	u8 bmOperationType = 0x0; 		/* Get address */
	struct uwb_rc_evt_dev_addr_mgmt evt;
	struct uwb_dev_addr *dev_addr = _addr;
	struct uwb_mac_addr *mac_addr = _addr;
	u8 *baAddr;

	result = -EINVAL;
	switch (type) {
	case UWB_ADDR_DEV:
		baAddr = dev_addr->data;
		break;
	case UWB_ADDR_MAC:
		bmOperationType |= 0x2;
		baAddr = mac_addr->data;
		break;
	default:
		return result;
	}
	result = FUNC2(rc, bmOperationType, baAddr, &evt);
	if (result == 0)
		switch (type) {
		case UWB_ADDR_DEV:
			FUNC1(&dev_addr->data, evt.baAddr,
			       sizeof(dev_addr->data));
			break;
		case UWB_ADDR_MAC:
			FUNC1(&mac_addr->data, evt.baAddr,
			       sizeof(mac_addr->data));
			break;
		default:		/* shut gcc up */
			FUNC0();
		}
	return result;
}