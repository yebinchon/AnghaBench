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

/* Variables and functions */
 int /*<<< orphan*/  helper_extend ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_helper_hash ; 
 int /*<<< orphan*/  nf_ct_helper_hsize ; 
 int /*<<< orphan*/  nf_ct_helper_vmalloc ; 

void FUNC2(void)
{
	FUNC0(&helper_extend);
	FUNC1(nf_ct_helper_hash, nf_ct_helper_vmalloc,
			     nf_ct_helper_hsize);
}