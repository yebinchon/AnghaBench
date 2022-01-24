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

/* Variables and functions */
 int /*<<< orphan*/  N_FUN ; 
 int /*<<< orphan*/  FUNC0 (char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*,int /*<<< orphan*/ ,unsigned int,char const*) ; 
 int /*<<< orphan*/  current_function_label ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int in_dot_func_p ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void
FUNC5 (const char *funcname, const char *startlabname)
{
  static int void_emitted_p;
  char *hold = input_line_pointer;
  char *buf;
  char *file;
  unsigned int lineno;

  if (! void_emitted_p)
    {
      input_line_pointer = "\"void:t1=1\",128,0,0,0";
      FUNC3 ('s');
      void_emitted_p = 1;
    }

  FUNC0 (&file, &lineno);
  FUNC1 (&buf, "\"%s:F1\",%d,0,%d,%s",
	    funcname, N_FUN, lineno + 1, startlabname);
  input_line_pointer = buf;
  FUNC3 ('s');
  FUNC2 (buf);

  input_line_pointer = hold;
  current_function_label = FUNC4 (startlabname);
  in_dot_func_p = 1;
}