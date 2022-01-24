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
struct elf32_arm_link_hash_table {int /*<<< orphan*/  root; } ;
struct bfd_link_info {int dummy; } ;
typedef  scalar_t__ bfd_size_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 char* THUMB2ARM_GLUE_ENTRY_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (scalar_t__) ; 
 struct elf32_arm_link_hash_table* FUNC4 (struct bfd_link_info*) ; 
 struct elf_link_hash_entry* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static struct elf_link_hash_entry *
FUNC9 (struct bfd_link_info *link_info,
		 const char *name,
		 char **error_message)
{
  char *tmp_name;
  struct elf_link_hash_entry *hash;
  struct elf32_arm_link_hash_table *hash_table;

  /* We need a pointer to the armelf specific hash table.  */
  hash_table = FUNC4 (link_info);

  tmp_name = FUNC3 ((bfd_size_type) FUNC8 (name)
			 + FUNC8 (THUMB2ARM_GLUE_ENTRY_NAME) + 1);

  FUNC0 (tmp_name);

  FUNC7 (tmp_name, THUMB2ARM_GLUE_ENTRY_NAME, name);

  hash = FUNC5
    (&(hash_table)->root, tmp_name, FALSE, FALSE, TRUE);

  if (hash == NULL)
    FUNC2 (error_message, FUNC1("unable to find THUMB glue '%s' for '%s'"),
	      tmp_name, name);

  FUNC6 (tmp_name);

  return hash;
}