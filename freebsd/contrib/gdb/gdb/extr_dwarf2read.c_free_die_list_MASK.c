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
struct die_info {struct die_info* attrs; struct die_info* sibling; struct die_info* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct die_info*) ; 

__attribute__((used)) static void
FUNC1 (struct die_info *dies)
{
  struct die_info *die, *next;

  die = dies;
  while (die)
    {
      if (die->child != NULL)
	FUNC1 (die->child);
      next = die->sibling;
      FUNC0 (die->attrs);
      FUNC0 (die);
      die = next;
    }
}