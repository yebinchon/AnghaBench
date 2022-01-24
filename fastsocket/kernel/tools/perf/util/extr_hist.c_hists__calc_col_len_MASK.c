#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u16 ;
struct hists {int dummy; } ;
struct TYPE_14__ {TYPE_2__* map; TYPE_1__* sym; } ;
struct hist_entry {TYPE_10__* branch_info; TYPE_3__ ms; int /*<<< orphan*/  thread; } ;
struct TYPE_20__ {TYPE_8__* map; TYPE_7__* sym; } ;
struct TYPE_19__ {int /*<<< orphan*/  dso; } ;
struct TYPE_18__ {scalar_t__ namelen; } ;
struct TYPE_17__ {TYPE_5__* map; TYPE_4__* sym; } ;
struct TYPE_16__ {int /*<<< orphan*/  dso; } ;
struct TYPE_15__ {scalar_t__ namelen; } ;
struct TYPE_13__ {int /*<<< orphan*/  dso; } ;
struct TYPE_12__ {int namelen; } ;
struct TYPE_11__ {TYPE_9__ to; TYPE_6__ from; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  HISTC_COMM ; 
 int /*<<< orphan*/  HISTC_DSO ; 
 int /*<<< orphan*/  HISTC_DSO_FROM ; 
 int /*<<< orphan*/  HISTC_DSO_TO ; 
 int /*<<< orphan*/  HISTC_SYMBOL ; 
 int /*<<< orphan*/  HISTC_SYMBOL_FROM ; 
 int /*<<< orphan*/  HISTC_SYMBOL_TO ; 
 int /*<<< orphan*/  HISTC_THREAD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hists*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hists*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hists*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct hists *hists, struct hist_entry *h)
{
	const unsigned int unresolved_col_width = BITS_PER_LONG / 4;
	u16 len;

	if (h->ms.sym)
		FUNC1(hists, HISTC_SYMBOL, h->ms.sym->namelen + 4);
	else
		FUNC3(hists, HISTC_DSO);

	len = FUNC4(h->thread);
	if (FUNC1(hists, HISTC_COMM, len))
		FUNC2(hists, HISTC_THREAD, len + 6);

	if (h->ms.map) {
		len = FUNC0(h->ms.map->dso);
		FUNC1(hists, HISTC_DSO, len);
	}

	if (h->branch_info) {
		int symlen;
		/*
		 * +4 accounts for '[x] ' priv level info
		 * +2 account of 0x prefix on raw addresses
		 */
		if (h->branch_info->from.sym) {
			symlen = (int)h->branch_info->from.sym->namelen + 4;
			FUNC1(hists, HISTC_SYMBOL_FROM, symlen);

			symlen = FUNC0(h->branch_info->from.map->dso);
			FUNC1(hists, HISTC_DSO_FROM, symlen);
		} else {
			symlen = unresolved_col_width + 4 + 2;
			FUNC1(hists, HISTC_SYMBOL_FROM, symlen);
			FUNC3(hists, HISTC_DSO_FROM);
		}

		if (h->branch_info->to.sym) {
			symlen = (int)h->branch_info->to.sym->namelen + 4;
			FUNC1(hists, HISTC_SYMBOL_TO, symlen);

			symlen = FUNC0(h->branch_info->to.map->dso);
			FUNC1(hists, HISTC_DSO_TO, symlen);
		} else {
			symlen = unresolved_col_width + 4 + 2;
			FUNC1(hists, HISTC_SYMBOL_TO, symlen);
			FUNC3(hists, HISTC_DSO_TO);
		}
	}
}