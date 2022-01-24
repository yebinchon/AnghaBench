#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * class; } ;
struct wpan_phy {TYPE_1__ dev; scalar_t__ idx; int /*<<< orphan*/  pib_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpan_phy*) ; 
 struct wpan_phy* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  wpan_phy_class ; 
 int /*<<< orphan*/  wpan_phy_idx ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  wpan_phy_mutex ; 

struct wpan_phy *FUNC9(size_t priv_size)
{
	struct wpan_phy *phy = FUNC3(sizeof(*phy) + priv_size,
			GFP_KERNEL);

	FUNC5(&wpan_phy_mutex);
	phy->idx = wpan_phy_idx++;
	if (FUNC7(!FUNC8(phy->idx))) {
		wpan_phy_idx--;
		FUNC6(&wpan_phy_mutex);
		FUNC2(phy);
		return NULL;
	}
	FUNC6(&wpan_phy_mutex);

	FUNC4(&phy->pib_lock);

	FUNC1(&phy->dev);
	FUNC0(&phy->dev, "wpan-phy%d", phy->idx);

	phy->dev.class = &wpan_phy_class;

	return phy;
}