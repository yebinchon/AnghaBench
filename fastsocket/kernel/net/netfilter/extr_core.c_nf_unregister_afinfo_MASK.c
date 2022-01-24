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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nf_afinfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(const struct nf_afinfo *afinfo)
{
	FUNC0(&afinfo_mutex);
	FUNC2(nf_afinfo[afinfo->family], NULL);
	FUNC1(&afinfo_mutex);
	FUNC3();
}