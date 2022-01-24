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
struct ui_file {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ui_file*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (int,int*) ; 

__attribute__((used)) static void
FUNC6 (int c, struct ui_file *stream, int quoter)
{
  const char *escape;
  int host_char;

  c &= 0xFF;			/* Avoid sign bit follies */

  escape = FUNC0 (c);
  if (escape)
    {
      if (quoter == '"' && FUNC4 (escape, "0") == 0)
	/* Print nulls embedded in double quoted strings as \000 to
	   prevent ambiguity.  */
	FUNC1 (stream, "\\000");
      else
	FUNC1 (stream, "\\%s", escape);
    }
  else if (FUNC5 (c, &host_char)
           && FUNC3 (host_char))
    {
      if (host_char == '\\' || host_char == quoter)
        FUNC2 ("\\", stream);
      FUNC1 (stream, "%c", host_char);
    }
  else
    FUNC1 (stream, "\\%.3o", (unsigned int) c);
}