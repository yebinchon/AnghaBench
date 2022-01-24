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
struct coff_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 char* THUMB2ARM_GLUE_ENTRY_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bfd_link_info*) ; 
 struct coff_link_hash_entry* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static struct coff_link_hash_entry *
FUNC9 (struct bfd_link_info *info,
		 const char *name,
		 bfd *input_bfd)
{
  char *tmp_name;
  struct coff_link_hash_entry *myh;
  bfd_size_type amt = FUNC8 (name) + FUNC8 (THUMB2ARM_GLUE_ENTRY_NAME) + 1;

  tmp_name = FUNC3 (amt);

  FUNC0 (tmp_name);

  FUNC7 (tmp_name, THUMB2ARM_GLUE_ENTRY_NAME, name);

  myh = FUNC5
    (FUNC4 (info), tmp_name, FALSE, FALSE, TRUE);

  if (myh == NULL)
    /* xgettext:c-format */
    FUNC2 (FUNC1("%B: unable to find THUMB glue '%s' for `%s'"),
			input_bfd, tmp_name, name);

  FUNC6 (tmp_name);

  return myh;
}