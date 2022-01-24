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
typedef  int /*<<< orphan*/  symbolS ;
struct line_subseg {struct line_entry** ptail; } ;
struct dwarf2_line_info {int dummy; } ;
struct line_entry {struct line_entry* next; struct dwarf2_line_info loc; int /*<<< orphan*/ * label; } ;

/* Variables and functions */
 struct line_subseg* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  now_subseg ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2 (symbolS *label, struct dwarf2_line_info *loc)
{
  struct line_subseg *ss;
  struct line_entry *e;

  e = (struct line_entry *) FUNC1 (sizeof (*e));
  e->next = NULL;
  e->label = label;
  e->loc = *loc;

  ss = FUNC0 (now_seg, now_subseg);
  *ss->ptail = e;
  ss->ptail = &e->next;
}