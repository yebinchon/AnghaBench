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
typedef  int /*<<< orphan*/  htab_del ;

/* Variables and functions */
 int /*<<< orphan*/  automata_list_eq_p ; 
 int /*<<< orphan*/  automata_list_hash ; 
 int /*<<< orphan*/  automata_list_table ; 
 int /*<<< orphan*/ * first_free_automata_list_el ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  first_free_automata_list_el = NULL;
  automata_list_table = FUNC0 (1500, automata_list_hash,
				     automata_list_eq_p, (htab_del) 0);
}