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
struct sk_buff {int dummy; } ;
struct br2684_vcc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct br2684_dev {TYPE_1__ brvccs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct br2684_vcc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct br2684_vcc *FUNC2(const struct sk_buff *skb,
						   const struct br2684_dev *brdev)
{
	return FUNC0(&brdev->brvccs) ? NULL : FUNC1(brdev->brvccs.next);	/* 1 vcc/dev right now */
}