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
struct ppc_link_hash_table {int /*<<< orphan*/  elf; } ;
struct bfd_link_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfd_link_info*) ; 
 struct ppc_link_hash_table* FUNC1 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  undo_symbol_twiddle ; 

void
FUNC2 (struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab = FUNC1 (info);
  FUNC0 (&htab->elf, undo_symbol_twiddle, info);
}