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
struct mdp_table_entry {int /*<<< orphan*/  reg; int /*<<< orphan*/  val; } ;
struct mdp_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdp_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const struct mdp_info *mdp,
			     struct mdp_table_entry *table, int len)
{
	int i;
	for (i = 0; i < len; i++)
		FUNC0(mdp, table[i].val, table[i].reg);
}