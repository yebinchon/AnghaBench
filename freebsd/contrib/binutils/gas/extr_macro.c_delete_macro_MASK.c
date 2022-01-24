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
typedef  int /*<<< orphan*/  macro_entry ;

/* Variables and functions */
 char FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macro_hash ; 
 size_t FUNC7 (char const*) ; 

void
FUNC8 (const char *name)
{
  char *copy;
  size_t i, len;
  macro_entry *macro;

  len = FUNC7 (name);
  copy = (char *) FUNC2 (len + 1);
  for (i = 0; i < len; ++i)
    copy[i] = FUNC0 (name[i]);
  copy[i] = '\0';

  /* Since hash_delete doesn't free memory, just clear out the entry.  */
  if ((macro = FUNC5 (macro_hash, copy)) != NULL)
    {
      FUNC6 (macro_hash, copy, NULL);
      FUNC4 (macro);
    }
  else
    FUNC3 (FUNC1("Attempt to purge non-existant macro `%s'"), copy);
}