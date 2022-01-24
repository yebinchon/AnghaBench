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
struct target_ops {struct section_table* to_sections; } ;
struct section_table {int dummy; } ;
struct section_closure {struct section_table* end; } ;
struct bfd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  add_to_section_table ; 
 unsigned int FUNC0 (struct bfd*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfd*,int /*<<< orphan*/ ,struct section_closure*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct target_ops*,unsigned int) ; 

void
FUNC4 (struct target_ops *targ, struct bfd *abfd)
{
  unsigned count;
  struct section_table *start;
  struct section_closure cl;

  count = FUNC0 (abfd);
  FUNC3 (targ, count);
  start = targ->to_sections;
  cl.end = targ->to_sections;
  FUNC1 (abfd, add_to_section_table, &cl);
  FUNC2 (cl.end - start <= count);
}