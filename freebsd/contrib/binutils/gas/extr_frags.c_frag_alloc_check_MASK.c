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
struct obstack {scalar_t__ chunk_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mri_common_symbol ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text_section ; 

__attribute__((used)) static void
FUNC3 (const struct obstack *ob)
{
  if (ob->chunk_size == 0)
    {
      FUNC1 (FUNC0("attempt to allocate data in absolute section"));
      FUNC2 (text_section, 0);
    }

  if (mri_common_symbol != NULL)
    {
      FUNC1 (FUNC0("attempt to allocate data in common section"));
      mri_common_symbol = NULL;
    }
}