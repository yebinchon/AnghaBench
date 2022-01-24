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
struct nf_afinfo {size_t family; } ;

/* Variables and functions */
 int /*<<< orphan*/  afinfo_mutex ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nf_afinfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nf_afinfo const*) ; 

int FUNC3(const struct nf_afinfo *afinfo)
{
	int err;

	err = FUNC0(&afinfo_mutex);
	if (err < 0)
		return err;
	FUNC2(nf_afinfo[afinfo->family], afinfo);
	FUNC1(&afinfo_mutex);
	return 0;
}