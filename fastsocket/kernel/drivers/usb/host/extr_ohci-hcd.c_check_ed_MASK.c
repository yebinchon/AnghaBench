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
struct ohci_hcd {int dummy; } ;
struct ed {int /*<<< orphan*/  td_list; int /*<<< orphan*/  hwTailP; int /*<<< orphan*/  hwHeadP; int /*<<< orphan*/  hwINFO; } ;

/* Variables and functions */
 int ED_IN ; 
 int TD_MASK ; 
 int FUNC0 (struct ohci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ohci_hcd *ohci, struct ed *ed)
{
	return (FUNC0(ohci, ed->hwINFO) & ED_IN) != 0
		&& (FUNC0(ohci, ed->hwHeadP) & TD_MASK)
			== (FUNC0(ohci, ed->hwTailP) & TD_MASK)
		&& !FUNC1(&ed->td_list);
}