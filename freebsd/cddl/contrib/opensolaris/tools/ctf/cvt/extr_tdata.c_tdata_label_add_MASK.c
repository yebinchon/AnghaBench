#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int td_nextid; int /*<<< orphan*/  td_labels; } ;
typedef  TYPE_1__ tdata_t ;
struct TYPE_7__ {int le_idx; int /*<<< orphan*/  le_name; } ;
typedef  TYPE_2__ labelent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tdata_label_cmp ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void
FUNC3(tdata_t *td, const char *label, int idx)
{
	labelent_t *le = FUNC1(sizeof (*le));

	le->le_name = FUNC2(label);
	le->le_idx = (idx == -1 ? td->td_nextid - 1 : idx);

	FUNC0(&td->td_labels, le, tdata_label_cmp);
}