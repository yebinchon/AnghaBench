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
struct hist_entry {struct hist_entry* branch_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hist_entry*) ; 

void FUNC1(struct hist_entry *he)
{
	FUNC0(he->branch_info);
	FUNC0(he);
}