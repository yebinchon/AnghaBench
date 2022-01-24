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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char**,unsigned int*) ; 
 int /*<<< orphan*/  buffer_limit ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_line_sb ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9 (int irpc)
{
  char *file, *eol;
  unsigned int line;
  sb s;
  const char *err;
  sb out;

  FUNC1 (&file, &line);

  FUNC8 (&s);
  eol = FUNC3 (input_line_pointer, 0);
  FUNC6 (&s, input_line_pointer, eol - input_line_pointer);
  input_line_pointer = eol;

  FUNC8 (&out);

  err = FUNC2 (irpc, 0, &s, &out, get_line_sb);
  if (err != NULL)
    FUNC0 (file, line, "%s", err);

  FUNC7 (&s);

  FUNC4 (&out, input_line_pointer, 1);
  FUNC7 (&out);
  buffer_limit = FUNC5 (&input_line_pointer);
}