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
struct reordering_mpdu {int dummy; } ;
struct reordering_list {struct reordering_mpdu* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reordering_list*) ; 

__attribute__((used)) static inline struct reordering_mpdu  *FUNC1(struct reordering_list *list)
	{
	FUNC0(list);

		return(list->next);
	}