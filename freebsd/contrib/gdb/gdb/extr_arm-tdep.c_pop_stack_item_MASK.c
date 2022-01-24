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
struct stack_item {struct stack_item* data; struct stack_item* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stack_item*) ; 

__attribute__((used)) static struct stack_item *
FUNC1 (struct stack_item *si)
{
  struct stack_item *dead = si;
  si = si->prev;
  FUNC0 (dead->data);
  FUNC0 (dead);
  return si;
}