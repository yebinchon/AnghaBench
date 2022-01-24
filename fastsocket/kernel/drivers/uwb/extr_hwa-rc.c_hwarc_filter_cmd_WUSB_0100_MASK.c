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
struct uwb_rccb {int /*<<< orphan*/  wCommand; } ;
struct uwb_rc {int dummy; } ;

/* Variables and functions */
 int ENOANO ; 
#define  UWB_RC_CMD_SCAN 129 
#define  UWB_RC_CMD_SET_DRP_IE 128 
 int FUNC0 (struct uwb_rc*,struct uwb_rccb**,size_t*) ; 
 int FUNC1 (struct uwb_rc*,struct uwb_rccb**,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC3(struct uwb_rc *rc, struct uwb_rccb **header,
			       size_t *size)
{
	int result;
	struct uwb_rccb *rccb = *header;
	int cmd = FUNC2(rccb->wCommand);
	switch (cmd) {
	case UWB_RC_CMD_SCAN:
		result = FUNC0(rc, header, size);
		break;
	case UWB_RC_CMD_SET_DRP_IE:
		result = FUNC1(rc, header, size);
		break;
	default:
		result = -ENOANO;
		break;
	}
	return result;
}