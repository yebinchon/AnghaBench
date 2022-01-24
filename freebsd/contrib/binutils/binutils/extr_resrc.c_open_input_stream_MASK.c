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
 int /*<<< orphan*/  FOPEN_RT ; 
 scalar_t__ ISTREAM_FILE ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  close_input_stream ; 
 int /*<<< orphan*/ * cpp_pipe ; 
 char* cpp_temp_file ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ istream_type ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static FILE *
FUNC13 (char *cmd)
{
  if (istream_type == ISTREAM_FILE)
    {
      char *fileprefix;

      fileprefix = FUNC1 ();
      cpp_temp_file = (char *) FUNC12 (FUNC10 (fileprefix) + 5);
      FUNC8 (cpp_temp_file, "%s.irc", fileprefix);
      FUNC5 (fileprefix);

      if (FUNC7 (cmd, cpp_temp_file))
	FUNC2 (FUNC0("can't execute `%s': %s"), cmd, FUNC9 (errno));

      cpp_pipe = FUNC3 (cpp_temp_file, FOPEN_RT);;
      if (cpp_pipe == NULL)
	FUNC2 (FUNC0("can't open temporary file `%s': %s"),
	       cpp_temp_file, FUNC9 (errno));

      if (verbose)
	FUNC4 (stderr,
	         FUNC0("Using temporary file `%s' to read preprocessor output\n"),
		 cpp_temp_file);
    }
  else
    {
      cpp_pipe = FUNC6 (cmd, FOPEN_RT);
      if (cpp_pipe == NULL)
	FUNC2 (FUNC0("can't popen `%s': %s"), cmd, FUNC9 (errno));
      if (verbose)
	FUNC4 (stderr, FUNC0("Using popen to read preprocessor output\n"));
    }

  FUNC11 (close_input_stream);
  return cpp_pipe;
}