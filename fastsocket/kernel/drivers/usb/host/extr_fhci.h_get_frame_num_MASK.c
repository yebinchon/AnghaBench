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
typedef  int u16 ;
struct fhci_hcd {TYPE_1__* pram; } ;
struct TYPE_2__ {int /*<<< orphan*/  frame_num; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline u16 FUNC1(struct fhci_hcd *fhci)
{
	return FUNC0(&fhci->pram->frame_num) & 0x07ff;
}