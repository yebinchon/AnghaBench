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
struct elf_strtab_hash {scalar_t__ sec_size; size_t size; TYPE_1__** array; } ;
typedef  size_t bfd_size_type ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1 (struct elf_strtab_hash *tab, bfd_size_type idx)
{
  if (idx == 0 || idx == (bfd_size_type) -1)
    return;
  FUNC0 (tab->sec_size == 0);
  FUNC0 (idx < tab->size);
  ++tab->array[idx]->refcount;
}