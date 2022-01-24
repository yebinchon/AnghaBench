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
struct queue_elem {struct queue_elem* next; } ;

/* Variables and functions */
 struct queue_elem* define_cond_exec_queue ; 
 scalar_t__ errors ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct queue_elem*) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  struct queue_elem *elem;

  FUNC0 ();
  if (errors)
    return;

  for (elem = define_cond_exec_queue; elem ; elem = elem->next)
    FUNC1 (elem);
}