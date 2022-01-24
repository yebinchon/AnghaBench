#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct section_list {struct section_list* next; TYPE_1__* prev; } ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_2__ {struct section_list* next; } ;

/* Variables and functions */
 struct section_list* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct section_list*) ; 
 struct section_list* sections_with_arm_elf_section_data ; 

__attribute__((used)) static void
FUNC2 (asection * sec)
{
  struct section_list * entry;

  entry = FUNC0 (sec);

  if (entry)
    {
      if (entry->prev != NULL)
	entry->prev->next = entry->next;
      if (entry->next != NULL)
	entry->next->prev = entry->prev;
      if (entry == sections_with_arm_elf_section_data)
	sections_with_arm_elf_section_data = entry->next;
      FUNC1 (entry);
    }
}