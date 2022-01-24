#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  nodes; int /*<<< orphan*/  preferred_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  user_nodemask; } ;
struct mempolicy {unsigned short flags; unsigned short mode; TYPE_2__ v; TYPE_1__ w; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOSPC ; 
#define  MPOL_BIND 131 
#define  MPOL_DEFAULT 130 
 unsigned short MPOL_F_LOCAL ; 
 unsigned short MPOL_F_RELATIVE_NODES ; 
 unsigned short MPOL_F_STATIC_NODES ; 
#define  MPOL_INTERLEAVE 129 
 unsigned short MPOL_LOCAL ; 
 unsigned short MPOL_MODE_FLAGS ; 
#define  MPOL_PREFERRED 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mempolicy default_policy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char** policy_types ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

int FUNC9(char *buffer, int maxlen, struct mempolicy *pol, int no_context)
{
	char *p = buffer;
	int l;
	nodemask_t nodes;
	unsigned short mode;
	unsigned short flags = pol ? pol->flags : 0;

	/*
	 * Sanity check:  room for longest mode, flag and some nodes
	 */
	FUNC1(maxlen < FUNC8("interleave") + FUNC8("relative") + 16);

	if (!pol || pol == &default_policy)
		mode = MPOL_DEFAULT;
	else
		mode = pol->mode;

	switch (mode) {
	case MPOL_DEFAULT:
		FUNC4(nodes);
		break;

	case MPOL_PREFERRED:
		FUNC4(nodes);
		if (flags & MPOL_F_LOCAL)
			mode = MPOL_LOCAL;	/* pseudo-policy */
		else
			FUNC2(pol->v.preferred_node, nodes);
		break;

	case MPOL_BIND:
		/* Fall through */
	case MPOL_INTERLEAVE:
		if (no_context)
			nodes = pol->w.user_nodemask;
		else
			nodes = pol->v.nodes;
		break;

	default:
		FUNC0();
	}

	l = FUNC8(policy_types[mode]);
	if (buffer + maxlen < p + l + 1)
		return -ENOSPC;

	FUNC7(p, policy_types[mode]);
	p += l;

	if (flags & MPOL_MODE_FLAGS) {
		if (buffer + maxlen < p + 2)
			return -ENOSPC;
		*p++ = '=';

		/*
		 * Currently, the only defined flags are mutually exclusive
		 */
		if (flags & MPOL_F_STATIC_NODES)
			p += FUNC6(p, buffer + maxlen - p, "static");
		else if (flags & MPOL_F_RELATIVE_NODES)
			p += FUNC6(p, buffer + maxlen - p, "relative");
	}

	if (!FUNC5(nodes)) {
		if (buffer + maxlen < p + 2)
			return -ENOSPC;
		*p++ = ':';
	 	p += FUNC3(p, buffer + maxlen - p, nodes);
	}
	return p - buffer;
}