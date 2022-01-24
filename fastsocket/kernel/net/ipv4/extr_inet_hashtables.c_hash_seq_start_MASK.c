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
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ cpu_id ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*,char*,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static void *FUNC2(struct seq_file *seq, loff_t *pos)
{
	FUNC1(seq, "%s\t%-15s%-15s%-15s%-15s%-15s%-15s\n",
		"CPU", "Loc_lst_lookup", "Glo_lst_lookup",
		"Com_accetp", "Loc_accept", "Rem_accept", "Glo_accept");

	cpu_id = 0;

	return FUNC0(pos);
}