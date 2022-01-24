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
struct ppc_link_hash_table {int /*<<< orphan*/  elf; struct ppc_link_hash_entry* tls_get_addr_fd; struct ppc_link_hash_entry* tls_get_addr; } ;
struct ppc_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ppc_link_hash_table* FUNC2 (struct bfd_link_info*) ; 

asection *
FUNC3 (bfd *obfd, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;

  htab = FUNC2 (info);
  htab->tls_get_addr = ((struct ppc_link_hash_entry *)
			FUNC1 (&htab->elf, ".__tls_get_addr",
					      FALSE, FALSE, TRUE));
  htab->tls_get_addr_fd = ((struct ppc_link_hash_entry *)
			   FUNC1 (&htab->elf, "__tls_get_addr",
						 FALSE, FALSE, TRUE));
  return FUNC0 (obfd, info);
}