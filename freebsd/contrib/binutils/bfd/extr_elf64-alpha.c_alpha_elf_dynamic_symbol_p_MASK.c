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
struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct elf_link_hash_entry*,struct bfd_link_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bfd_boolean
FUNC1 (struct elf_link_hash_entry *h,
			    struct bfd_link_info *info)
{
  return FUNC0 (h, info, 0);
}