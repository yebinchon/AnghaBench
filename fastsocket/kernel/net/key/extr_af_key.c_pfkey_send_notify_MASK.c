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
struct netns_pfkey {int /*<<< orphan*/  socks_nr; } ;
struct net {int dummy; } ;
struct km_event {int event; struct net* net; } ;

/* Variables and functions */
#define  XFRM_MSG_DELSA 133 
#define  XFRM_MSG_EXPIRE 132 
#define  XFRM_MSG_FLUSHSA 131 
#define  XFRM_MSG_NEWAE 130 
#define  XFRM_MSG_NEWSA 129 
#define  XFRM_MSG_UPDSA 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xfrm_state*,struct km_event*) ; 
 int FUNC2 (struct xfrm_state*,struct km_event*) ; 
 int FUNC3 (struct km_event*) ; 
 struct netns_pfkey* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfkey_net_id ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 struct net* FUNC6 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC7(struct xfrm_state *x, struct km_event *c)
{
	struct net *net = x ? FUNC6(x) : c->net;
	struct netns_pfkey *net_pfkey = FUNC4(net, pfkey_net_id);

	if (FUNC0(&net_pfkey->socks_nr) == 0)
		return 0;

	switch (c->event) {
	case XFRM_MSG_EXPIRE:
		return FUNC2(x, c);
	case XFRM_MSG_DELSA:
	case XFRM_MSG_NEWSA:
	case XFRM_MSG_UPDSA:
		return FUNC1(x, c);
	case XFRM_MSG_FLUSHSA:
		return FUNC3(c);
	case XFRM_MSG_NEWAE: /* not yet supported */
		break;
	default:
		FUNC5("pfkey: Unknown SA event %d\n", c->event);
		break;
	}

	return 0;
}