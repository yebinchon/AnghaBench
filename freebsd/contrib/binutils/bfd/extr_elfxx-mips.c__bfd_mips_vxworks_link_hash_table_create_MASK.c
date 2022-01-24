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
struct mips_elf_link_hash_table {int is_vxworks; } ;
struct bfd_link_hash_table {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 struct bfd_link_hash_table* FUNC0 (int /*<<< orphan*/ *) ; 

struct bfd_link_hash_table *
FUNC1 (bfd *abfd)
{
  struct bfd_link_hash_table *ret;

  ret = FUNC0 (abfd);
  if (ret)
    {
      struct mips_elf_link_hash_table *htab;

      htab = (struct mips_elf_link_hash_table *) ret;
      htab->is_vxworks = 1;
    }
  return ret;
}