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
struct jffs2_unknown_node {int /*<<< orphan*/  nodetype; int /*<<< orphan*/  hdr_crc; int /*<<< orphan*/  totlen; int /*<<< orphan*/  magic; } ;
struct jffs2_sb_info {int flags; } ;
struct jffs2_raw_node_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int JFFS2_COMPAT_MASK ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
#define  JFFS2_FEATURE_INCOMPAT 131 
#define  JFFS2_FEATURE_ROCOMPAT 130 
#define  JFFS2_FEATURE_RWCOMPAT_COPY 129 
#define  JFFS2_FEATURE_RWCOMPAT_DELETE 128 
 int JFFS2_NODE_ACCURATE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int JFFS2_SB_FLAG_RO ; 
 scalar_t__ REF_UNCHECKED ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct jffs2_sb_info*,struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC8 (struct jffs2_raw_node_ref*) ; 
 int /*<<< orphan*/  FUNC9 (struct jffs2_raw_node_ref*) ; 

__attribute__((used)) static inline int FUNC10(struct jffs2_sb_info *c, struct jffs2_raw_node_ref *ref, struct jffs2_unknown_node *un)
{
	/* We don't mark unknown nodes as REF_UNCHECKED */
	if (FUNC8(ref) == REF_UNCHECKED) {
		FUNC2("REF_UNCHECKED but unknown node at %#08x\n",
			    FUNC9(ref));
		FUNC2("Node is {%04x,%04x,%08x,%08x}. Please report this error.\n",
			    FUNC5(un->magic), FUNC5(un->nodetype),
			    FUNC6(un->totlen), FUNC6(un->hdr_crc));
		FUNC7(c, ref);
		return 0;
	}

	un->nodetype = FUNC4(JFFS2_NODE_ACCURATE | FUNC5(un->nodetype));

	switch(FUNC5(un->nodetype) & JFFS2_COMPAT_MASK) {

	case JFFS2_FEATURE_INCOMPAT:
		FUNC2("unknown INCOMPAT nodetype %#04X at %#08x\n",
			    FUNC5(un->nodetype), FUNC9(ref));
		/* EEP */
		FUNC0();
		break;

	case JFFS2_FEATURE_ROCOMPAT:
		FUNC2("unknown ROCOMPAT nodetype %#04X at %#08x\n",
			    FUNC5(un->nodetype), FUNC9(ref));
		FUNC1(!(c->flags & JFFS2_SB_FLAG_RO));
		break;

	case JFFS2_FEATURE_RWCOMPAT_COPY:
		FUNC3("unknown RWCOMPAT_COPY nodetype %#04X at %#08x\n",
			     FUNC5(un->nodetype), FUNC9(ref));
		break;

	case JFFS2_FEATURE_RWCOMPAT_DELETE:
		FUNC3("unknown RWCOMPAT_DELETE nodetype %#04X at %#08x\n",
			     FUNC5(un->nodetype), FUNC9(ref));
		FUNC7(c, ref);
		return 0;
	}

	return 0;
}