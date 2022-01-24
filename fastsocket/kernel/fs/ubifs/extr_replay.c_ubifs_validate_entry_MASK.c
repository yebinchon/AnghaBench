#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct ubifs_dent_node {scalar_t__ type; scalar_t__* name; int /*<<< orphan*/  inum; TYPE_1__ ch; int /*<<< orphan*/  nlen; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MAX_INUM ; 
 int UBIFS_DENT_KEY ; 
 scalar_t__ UBIFS_DENT_NODE_SZ ; 
 scalar_t__ UBIFS_ITYPES_CNT ; 
 int UBIFS_MAX_NLEN ; 
 int UBIFS_XENT_KEY ; 
 int FUNC0 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(struct ubifs_info *c,
			 const struct ubifs_dent_node *dent)
{
	int key_type = FUNC0(c, dent->key);
	int nlen = FUNC1(dent->nlen);

	if (FUNC2(dent->ch.len) != nlen + UBIFS_DENT_NODE_SZ + 1 ||
	    dent->type >= UBIFS_ITYPES_CNT ||
	    nlen > UBIFS_MAX_NLEN || dent->name[nlen] != 0 ||
	    FUNC4(dent->name, nlen) != nlen ||
	    FUNC3(dent->inum) > MAX_INUM) {
		FUNC5("bad %s node", key_type == UBIFS_DENT_KEY ?
			  "directory entry" : "extended attribute entry");
		return -EINVAL;
	}

	if (key_type != UBIFS_DENT_KEY && key_type != UBIFS_XENT_KEY) {
		FUNC5("bad key type %d", key_type);
		return -EINVAL;
	}

	return 0;
}