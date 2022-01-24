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
struct elf_link_local_dynamic_entry {long input_indx; long dynindx; int /*<<< orphan*/ * input_bfd; struct elf_link_local_dynamic_entry* next; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {struct elf_link_local_dynamic_entry* dynlocal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct bfd_link_info*) ; 

long
FUNC1 (struct bfd_link_info *info,
				    bfd *input_bfd,
				    long input_indx)
{
  struct elf_link_local_dynamic_entry *e;

  for (e = FUNC0 (info)->dynlocal; e ; e = e->next)
    if (e->input_bfd == input_bfd && e->input_indx == input_indx)
      return e->dynindx;
  return -1;
}