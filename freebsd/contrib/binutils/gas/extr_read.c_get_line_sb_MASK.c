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

/* Variables and functions */
 char* buffer_limit ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_m68k_mri ; 
 char* input_line_pointer ; 
 char* FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC4 (sb *line)
{
  char *eol;

  if (input_line_pointer[-1] == '\n')
    FUNC0 ();

  if (input_line_pointer >= buffer_limit)
    {
      buffer_limit = FUNC2 (&input_line_pointer);
      if (buffer_limit == 0)
	return 0;
    }

  eol = FUNC1 (input_line_pointer, flag_m68k_mri);
  FUNC3 (line, input_line_pointer, eol - input_line_pointer);
  input_line_pointer = eol;

  /* Don't skip multiple end-of-line characters, because that breaks support
     for the IA-64 stop bit (;;) which looks like two consecutive end-of-line
     characters but isn't.  Instead just skip one end of line character and
     return the character skipped so that the caller can re-insert it if
     necessary.   */
  return *input_line_pointer++;
}