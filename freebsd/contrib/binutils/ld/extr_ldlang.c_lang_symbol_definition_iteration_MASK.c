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
struct lang_definedness_hash_entry {int iteration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lang_definedness_table ; 

int
FUNC2 (const char *name)
{
  struct lang_definedness_hash_entry *defentry
    = (struct lang_definedness_hash_entry *)
    FUNC1 (&lang_definedness_table, name, FALSE, FALSE);

  /* We've already created this one on the presence of DEFINED in the
     script, so it can't be NULL unless something is borked elsewhere in
     the code.  */
  if (defentry == NULL)
    FUNC0 ();

  return defentry->iteration;
}