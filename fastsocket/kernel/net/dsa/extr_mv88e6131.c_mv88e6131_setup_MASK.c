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
struct mv88e6xxx_priv_state {int /*<<< orphan*/  stats_mutex; int /*<<< orphan*/  smi_mutex; } ;
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dsa_switch*) ; 
 int FUNC2 (struct dsa_switch*,int) ; 
 int FUNC3 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_switch*) ; 

__attribute__((used)) static int FUNC5(struct dsa_switch *ds)
{
	struct mv88e6xxx_priv_state *ps = (void *)(ds + 1);
	int i;
	int ret;

	FUNC0(&ps->smi_mutex);
	FUNC4(ds);
	FUNC0(&ps->stats_mutex);

	ret = FUNC3(ds);
	if (ret < 0)
		return ret;

	/* @@@ initialise vtu and atu */

	ret = FUNC1(ds);
	if (ret < 0)
		return ret;

	for (i = 0; i < 11; i++) {
		ret = FUNC2(ds, i);
		if (ret < 0)
			return ret;
	}

	return 0;
}