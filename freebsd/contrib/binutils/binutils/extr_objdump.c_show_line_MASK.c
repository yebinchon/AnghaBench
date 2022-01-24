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
struct print_file_list {char const* filename; unsigned int last_line; scalar_t__ first; struct print_file_list* next; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 unsigned int SHOW_PRECEDING_CONTEXT_LINES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct print_file_list*,unsigned int,unsigned int) ; 
 scalar_t__ file_start_context ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char const* prev_functionname ; 
 unsigned int prev_line ; 
 struct print_file_list* print_files ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  syms ; 
 struct print_file_list* FUNC7 (char const*) ; 
 scalar_t__ with_line_numbers ; 
 scalar_t__ with_source_code ; 
 char* FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9 (bfd *abfd, asection *section, bfd_vma addr_offset)
{
  const char *filename;
  const char *functionname;
  unsigned int line;

  if (! with_line_numbers && ! with_source_code)
    return;

  if (! FUNC0 (abfd, section, syms, addr_offset, &filename,
			       &functionname, &line))
    return;

  if (filename != NULL && *filename == '\0')
    filename = NULL;
  if (functionname != NULL && *functionname == '\0')
    functionname = NULL;

  if (with_line_numbers)
    {
      if (functionname != NULL
	  && (prev_functionname == NULL
	      || FUNC4 (functionname, prev_functionname) != 0))
	FUNC3 ("%s():\n", functionname);
      if (line > 0 && line != prev_line)
	FUNC3 ("%s:%u\n", filename == NULL ? "???" : filename, line);
    }

  if (with_source_code
      && filename != NULL
      && line > 0)
    {
      struct print_file_list **pp, *p;
      unsigned l;

      for (pp = &print_files; *pp != NULL; pp = &(*pp)->next)
	if (FUNC4 ((*pp)->filename, filename) == 0)
	  break;
      p = *pp;

      if (p == NULL)
	  p = FUNC7 (filename);

      if (p != NULL && line != p->last_line)
	{
	  if (file_start_context && p->first) 
	    l = 1;
	  else 
	    {
	      l = line - SHOW_PRECEDING_CONTEXT_LINES;
	      if (l >= line) 
		l = 1;
	      if (p->last_line >= l && p->last_line <= line)
		l = p->last_line + 1;
	    }
	  FUNC1 (p, l, line);
	  p->last_line = line;
	  p->first = 0;
	}
    }

  if (functionname != NULL
      && (prev_functionname == NULL
	  || FUNC4 (functionname, prev_functionname) != 0))
    {
      if (prev_functionname != NULL)
	FUNC2 (prev_functionname);
      prev_functionname = FUNC8 (FUNC6 (functionname) + 1);
      FUNC5 (prev_functionname, functionname);
    }

  if (line > 0 && line != prev_line)
    prev_line = line;
}