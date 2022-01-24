#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct ldtentry {int next; int namlen; int /*<<< orphan*/ * name; } ;
struct idtentry {int next; int namlen; int /*<<< orphan*/ * name; } ;
struct dtslot {int next; int /*<<< orphan*/ * name; } ;
struct component_name {int namlen; int /*<<< orphan*/ * name; } ;
typedef  int s8 ;
struct TYPE_5__ {int flag; } ;
struct TYPE_6__ {struct dtslot* slot; TYPE_1__ header; } ;
typedef  TYPE_2__ dtpage_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int BT_LEAF ; 
 int /*<<< orphan*/  DTIHDRDATALEN ; 
 int /*<<< orphan*/  DTLHDRDATALEN ; 
 int /*<<< orphan*/  DTLHDRDATALEN_LEGACY ; 
 int /*<<< orphan*/  DTSLOTDATALEN ; 
 int* FUNC0 (TYPE_2__*) ; 
 int JFS_DIR_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(dtpage_t * p, int i,	/* entry index */
		     struct component_name * key, int flag)
{
	int si;
	s8 *stbl;
	struct ldtentry *lh;
	struct idtentry *ih;
	struct dtslot *t;
	int namlen, len;
	wchar_t *kname;
	__le16 *name;

	/* get entry */
	stbl = FUNC0(p);
	si = stbl[i];
	if (p->header.flag & BT_LEAF) {
		lh = (struct ldtentry *) & p->slot[si];
		si = lh->next;
		namlen = lh->namlen;
		name = lh->name;
		if (flag & JFS_DIR_INDEX)
			len = FUNC2(namlen, DTLHDRDATALEN);
		else
			len = FUNC2(namlen, DTLHDRDATALEN_LEGACY);
	} else {
		ih = (struct idtentry *) & p->slot[si];
		si = ih->next;
		namlen = ih->namlen;
		name = ih->name;
		len = FUNC2(namlen, DTIHDRDATALEN);
	}

	key->namlen = namlen;
	kname = key->name;

	/*
	 * move head/only segment
	 */
	FUNC1(kname, name, len);

	/*
	 * move additional segment(s)
	 */
	while (si >= 0) {
		/* get next segment */
		t = &p->slot[si];
		kname += len;
		namlen -= len;
		len = FUNC2(namlen, DTSLOTDATALEN);
		FUNC1(kname, t->name, len);

		si = t->next;
	}
}