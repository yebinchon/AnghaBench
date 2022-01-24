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
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct phonethdr {int pn_robj; int /*<<< orphan*/  pn_rdev; int /*<<< orphan*/  pn_sdev; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  PN_COMMGR ; 
 struct phonethdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *rskb)
{
	struct phonethdr *oph = FUNC0(rskb);
	static const u8 data[4] = {
		0x00 /* trans ID */, 0x10 /* subscribe msg */,
		0x00 /* subscription count */, 0x00 /* dummy */
	};

	return FUNC2(data, sizeof(data), rskb->dev,
				FUNC1(oph->pn_sdev, 0x00),
				FUNC1(oph->pn_rdev, oph->pn_robj),
				PN_COMMGR);
}