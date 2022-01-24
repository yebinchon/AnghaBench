#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  algs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* hcrypt ; 
 int /*<<< orphan*/  ieee80211_crypt_null ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void)
{
	int ret = -ENOMEM;

	hcrypt = FUNC3(sizeof(*hcrypt), GFP_KERNEL);
	if (!hcrypt)
		goto out;

	FUNC4(hcrypt, 0, sizeof(*hcrypt));
	FUNC0(&hcrypt->algs);
	FUNC5(&hcrypt->lock);

	ret = FUNC1(&ieee80211_crypt_null);
	if (ret < 0) {
		FUNC2(hcrypt);
		hcrypt = NULL;
	}
out:
	return ret;
}