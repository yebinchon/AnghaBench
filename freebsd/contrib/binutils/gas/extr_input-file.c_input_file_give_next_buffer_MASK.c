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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * f_in ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_name ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_file_get ; 
 scalar_t__ preprocess ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

char *
FUNC7 (char *where /* Where to place 1st character of new buffer.  */)
{
  char *return_value;		/* -> Last char of what we read, + 1.  */
  register int size;

  if (f_in == (FILE *) 0)
    return 0;
  /* fflush (stdin); could be done here if you want to synchronise
     stdin and stdout, for the case where our input file is stdin.
     Since the assembler shouldn't do any output to stdout, we
     don't bother to synch output and input.  */
  if (preprocess)
    size = FUNC3 (input_file_get, where, BUFFER_SIZE);
  else
    size = FUNC5 (where, sizeof (char), BUFFER_SIZE, f_in);
  if (size < 0)
    {
      FUNC1 (FUNC0("can't read from %s: %s"), file_name, FUNC6 (errno));
      size = 0;
    }
  if (size)
    return_value = where + size;
  else
    {
      if (FUNC4 (f_in))
	FUNC2 (FUNC0("can't close %s: %s"), file_name, FUNC6 (errno));

      f_in = (FILE *) 0;
      return_value = 0;
    }

  return return_value;
}