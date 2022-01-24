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
struct section_list {int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  asection ;
typedef  int /*<<< orphan*/  _arm_elf_section_data ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 struct section_list* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static _arm_elf_section_data *
FUNC2 (asection * sec)
{
  struct section_list * entry;

  entry = FUNC1 (sec);

  if (entry)
    return FUNC0 (entry->sec);
  else
    return NULL;
}