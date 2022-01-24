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
struct rds_page_frag {int /*<<< orphan*/  f_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rds_page_frag*) ; 
 int /*<<< orphan*/  rds_iw_frag_slab ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rds_page_frag*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rds_page_frag *frag)
{
	FUNC2("frag %p page %p\n", frag, frag->f_page);
	FUNC0(frag->f_page);
	FUNC1(rds_iw_frag_slab, frag);
}