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
struct decision_head {struct decision* last; struct decision* first; } ;
struct decision {scalar_t__ number; int /*<<< orphan*/  position; struct decision_head success; } ;

/* Variables and functions */
 int /*<<< orphan*/  next_number ; 
 struct decision* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static struct decision *
FUNC2 (const char *position, struct decision_head *last)
{
  struct decision *new = FUNC0 (1, sizeof (struct decision));

  new->success = *last;
  new->position = FUNC1 (position);
  new->number = next_number++;

  last->first = last->last = new;
  return new;
}