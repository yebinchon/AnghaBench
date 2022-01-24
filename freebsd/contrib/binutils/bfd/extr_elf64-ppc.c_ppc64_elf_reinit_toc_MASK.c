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
struct ppc_link_hash_table {int multi_toc_needed; scalar_t__ toc_curr; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ TOC_BASE_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ppc_link_hash_table* FUNC1 (struct bfd_link_info*) ; 

void
FUNC2 (bfd *output_bfd, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab = FUNC1 (info);

  htab->multi_toc_needed = htab->toc_curr != FUNC0 (output_bfd);

  /* toc_curr tracks the TOC offset used for code sections below in
     ppc64_elf_next_input_section.  Start off at 0x8000.  */
  htab->toc_curr = TOC_BASE_OFF;
}