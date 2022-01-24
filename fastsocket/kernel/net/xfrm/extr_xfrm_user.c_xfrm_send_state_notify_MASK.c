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
struct xfrm_state {int dummy; } ;
struct km_event {int event; } ;

/* Variables and functions */
#define  XFRM_MSG_DELSA 133 
#define  XFRM_MSG_EXPIRE 132 
#define  XFRM_MSG_FLUSHSA 131 
#define  XFRM_MSG_NEWAE 130 
#define  XFRM_MSG_NEWSA 129 
#define  XFRM_MSG_UPDSA 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct xfrm_state*,struct km_event*) ; 
 int FUNC2 (struct xfrm_state*,struct km_event*) ; 
 int FUNC3 (struct xfrm_state*,struct km_event*) ; 
 int FUNC4 (struct km_event*) ; 

__attribute__((used)) static int FUNC5(struct xfrm_state *x, struct km_event *c)
{

	switch (c->event) {
	case XFRM_MSG_EXPIRE:
		return FUNC2(x, c);
	case XFRM_MSG_NEWAE:
		return FUNC1(x, c);
	case XFRM_MSG_DELSA:
	case XFRM_MSG_UPDSA:
	case XFRM_MSG_NEWSA:
		return FUNC3(x, c);
	case XFRM_MSG_FLUSHSA:
		return FUNC4(c);
	default:
		 FUNC0("xfrm_user: Unknown SA event %d\n", c->event);
		 break;
	}

	return 0;

}