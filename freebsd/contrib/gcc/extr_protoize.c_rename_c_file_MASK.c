#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* symbol; } ;
typedef  TYPE_1__ hash_table_entry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC1 (int) ; 
 char const* cplus_suffix ; 
 int errno ; 
 int /*<<< orphan*/  errors ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pname ; 
 int FUNC3 (char const*,char* const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char* const) ; 
 int /*<<< orphan*/  FUNC5 (char* const,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  syscalls_absolute_filename ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (const hash_table_entry *hp)
{
  const char *filename = hp->symbol;
  int last_char_index = FUNC6 (filename) - 1;
  char *const new_filename = FUNC1 (FUNC6 (filename)
				     + FUNC6 (cplus_suffix) + 1);

  /* Note that we don't care here if the given file was converted or not.  It
     is possible that the given file was *not* converted, simply because there
     was nothing in it which actually required conversion.  Even in this case,
     we want to do the renaming.  Note that we only rename files with the .c
     suffix (except for the syscalls file, which is left alone).  */

  if (filename[last_char_index] != 'c' || filename[last_char_index-1] != '.'
      || FUNC0 (syscalls_absolute_filename, filename))
    return;

  FUNC5 (new_filename, filename);
  FUNC5 (&new_filename[last_char_index], cplus_suffix);

  if (FUNC3 (filename, new_filename) == -1)
    {
      int errno_val = errno;
      FUNC2 ("%s: warning: can't rename file '%s' to '%s': %s\n",
	      pname, FUNC4 (NULL, filename),
	      FUNC4 (NULL, new_filename), FUNC7 (errno_val));
      errors++;
      return;
    }
}