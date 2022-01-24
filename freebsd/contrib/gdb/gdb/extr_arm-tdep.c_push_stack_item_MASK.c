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
struct stack_item {int len; void* data; struct stack_item* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static struct stack_item *
FUNC2 (struct stack_item *prev, void *contents, int len)
{
  struct stack_item *si;
  si = FUNC1 (sizeof (struct stack_item));
  si->data = FUNC1 (len);
  si->len = len;
  si->prev = prev;
  FUNC0 (si->data, contents, len);
  return si;
}