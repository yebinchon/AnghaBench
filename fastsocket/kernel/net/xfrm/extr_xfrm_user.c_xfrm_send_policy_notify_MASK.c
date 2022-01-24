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
struct xfrm_policy {int dummy; } ;
struct km_event {int event; } ;

/* Variables and functions */
#define  XFRM_MSG_DELPOLICY 132 
#define  XFRM_MSG_FLUSHPOLICY 131 
#define  XFRM_MSG_NEWPOLICY 130 
#define  XFRM_MSG_POLEXPIRE 129 
#define  XFRM_MSG_UPDPOLICY 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct xfrm_policy*,int,struct km_event*) ; 
 int FUNC2 (struct xfrm_policy*,int,struct km_event*) ; 
 int FUNC3 (struct km_event*) ; 

__attribute__((used)) static int FUNC4(struct xfrm_policy *xp, int dir, struct km_event *c)
{

	switch (c->event) {
	case XFRM_MSG_NEWPOLICY:
	case XFRM_MSG_UPDPOLICY:
	case XFRM_MSG_DELPOLICY:
		return FUNC2(xp, dir, c);
	case XFRM_MSG_FLUSHPOLICY:
		return FUNC3(c);
	case XFRM_MSG_POLEXPIRE:
		return FUNC1(xp, dir, c);
	default:
		FUNC0("xfrm_user: Unknown Policy event %d\n", c->event);
	}

	return 0;

}