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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2 (pretty_printer *buffer, const char *str)
{
  if (str == NULL)
    return;

  while (*str)
    {
      switch (str[0])
	{
	case '\b':
	  FUNC1 (buffer, "\\b");
	  break;

	case '\f':
	  FUNC1 (buffer, "\\f");
	  break;

	case '\n':
	  FUNC1 (buffer, "\\n");
	  break;

	case '\r':
	  FUNC1 (buffer, "\\r");
	  break;

	case '\t':
	  FUNC1 (buffer, "\\t");
	  break;

	case '\v':
	  FUNC1 (buffer, "\\v");
	  break;

	case '\\':
	  FUNC1 (buffer, "\\\\");
	  break;

	case '\"':
	  FUNC1 (buffer, "\\\"");
	  break;

	case '\'':
	  FUNC1 (buffer, "\\'");
	  break;

	  /* No need to handle \0; the loop terminates on \0.  */

	case '\1':
	  FUNC1 (buffer, "\\1");
	  break;

	case '\2':
	  FUNC1 (buffer, "\\2");
	  break;

	case '\3':
	  FUNC1 (buffer, "\\3");
	  break;

	case '\4':
	  FUNC1 (buffer, "\\4");
	  break;

	case '\5':
	  FUNC1 (buffer, "\\5");
	  break;

	case '\6':
	  FUNC1 (buffer, "\\6");
	  break;

	case '\7':
	  FUNC1 (buffer, "\\7");
	  break;

	default:
	  FUNC0 (buffer, str[0]);
	  break;
	}
      str++;
    }
}