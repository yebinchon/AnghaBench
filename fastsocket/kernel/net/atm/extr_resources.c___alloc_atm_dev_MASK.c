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
struct atm_dev {char const* type; int /*<<< orphan*/  lecs; int /*<<< orphan*/  local; int /*<<< orphan*/  lock; int /*<<< orphan*/  link_rate; int /*<<< orphan*/  signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_OC3_PCR ; 
 int /*<<< orphan*/  ATM_PHY_SIG_UNKNOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct atm_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct atm_dev *FUNC3(const char *type)
{
	struct atm_dev *dev;

	dev = FUNC1(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;
	dev->type = type;
	dev->signal = ATM_PHY_SIG_UNKNOWN;
	dev->link_rate = ATM_OC3_PCR;
	FUNC2(&dev->lock);
	FUNC0(&dev->local);
	FUNC0(&dev->lecs);

	return dev;
}