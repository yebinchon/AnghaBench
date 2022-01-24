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
typedef  int /*<<< orphan*/  sb ;
typedef  int /*<<< orphan*/  macro_entry ;

/* Variables and functions */
 char FUNC0 (char) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macro_hash ; 
 int /*<<< orphan*/  macro_mri ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11 (const char *line, sb *expand,
	     const char **error, macro_entry **info)
{
  const char *s;
  char *copy, *cs;
  macro_entry *macro;
  sb line_sb;

  if (! FUNC3 (*line)
      && (! macro_mri || *line != '.'))
    return 0;

  s = line + 1;
  while (FUNC5 (*s))
    ++s;
  if (FUNC4 (*s))
    ++s;

  copy = (char *) FUNC1 (s - line + 1);
  FUNC7 (copy, line, s - line);
  copy[s - line] = '\0';
  for (cs = copy; *cs != '\0'; cs++)
    *cs = FUNC0 (*cs);

  macro = (macro_entry *) FUNC2 (macro_hash, copy);

  if (macro == NULL)
    return 0;

  /* Wrap the line up in an sb.  */
  FUNC10 (&line_sb);
  while (*s != '\0' && *s != '\n' && *s != '\r')
    FUNC8 (&line_sb, *s++);

  FUNC10 (expand);
  *error = FUNC6 (0, &line_sb, macro, expand);

  FUNC9 (&line_sb);

  /* Export the macro information if requested.  */
  if (info)
    *info = macro;

  return 1;
}