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
typedef  int /*<<< orphan*/  uint32_t ;
struct reserve_info {int dummy; } ;
struct node {int dummy; } ;
struct dt_info {unsigned int dtsflags; int /*<<< orphan*/  boot_cpuid_phys; struct node* dt; struct reserve_info* reservelist; } ;

/* Variables and functions */
 struct dt_info* FUNC0 (int) ; 

struct dt_info *FUNC1(unsigned int dtsflags,
			      struct reserve_info *reservelist,
			      struct node *tree, uint32_t boot_cpuid_phys)
{
	struct dt_info *dti;

	dti = FUNC0(sizeof(*dti));
	dti->dtsflags = dtsflags;
	dti->reservelist = reservelist;
	dti->dt = tree;
	dti->boot_cpuid_phys = boot_cpuid_phys;

	return dti;
}