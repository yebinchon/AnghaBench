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
struct cref_hash_entry {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FILECOL ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  cref_fill_array ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cref_hash_entry***) ; 
 int /*<<< orphan*/  cref_initialized ; 
 int /*<<< orphan*/  cref_sort_array ; 
 int cref_symcount ; 
 int /*<<< orphan*/  cref_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cref_hash_entry*) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cref_hash_entry**,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 
 struct cref_hash_entry** FUNC8 (int) ; 

void
FUNC9 (FILE *fp)
{
  int len;
  struct cref_hash_entry **csyms, **csym_fill, **csym, **csym_end;
  const char *msg;

  FUNC3 (fp, FUNC1("\nCross Reference Table\n\n"));
  msg = FUNC1("Symbol");
  FUNC3 (fp, "%s", msg);
  len = FUNC7 (msg);
  while (len < FILECOL)
    {
      FUNC5 (' ', fp);
      ++len;
    }
  FUNC3 (fp, FUNC1("File\n"));

  if (! cref_initialized)
    {
      FUNC3 (fp, FUNC1("No symbols\n"));
      return;
    }

  csyms = FUNC8 (cref_symcount * sizeof (*csyms));

  csym_fill = csyms;
  FUNC2 (&cref_table, cref_fill_array, &csym_fill);
  FUNC0 ((size_t) (csym_fill - csyms) == cref_symcount);

  FUNC6 (csyms, cref_symcount, sizeof (*csyms), cref_sort_array);

  csym_end = csyms + cref_symcount;
  for (csym = csyms; csym < csym_end; csym++)
    FUNC4 (fp, *csym);
}