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
struct elt_list {struct elt_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  elt_list_pool ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct elt_list*) ; 

__attribute__((used)) static inline void
FUNC1 (struct elt_list **pl)
{
  struct elt_list *l = *pl;

  *pl = l->next;
  FUNC0 (elt_list_pool, l);
}