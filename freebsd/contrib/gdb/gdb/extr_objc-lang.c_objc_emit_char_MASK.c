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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ui_file*) ; 

__attribute__((used)) static void
FUNC3 (int c, struct ui_file *stream, int quoter)
{

  c &= 0xFF;			/* Avoid sign bit follies.  */

  if (FUNC0 (c))
    {
      if (c == '\\' || c == quoter)
	{
	  FUNC2 ("\\", stream);
	}
      FUNC1 (stream, "%c", c);
    }
  else
    {
      switch (c)
	{
	case '\n':
	  FUNC2 ("\\n", stream);
	  break;
	case '\b':
	  FUNC2 ("\\b", stream);
	  break;
	case '\t':
	  FUNC2 ("\\t", stream);
	  break;
	case '\f':
	  FUNC2 ("\\f", stream);
	  break;
	case '\r':
	  FUNC2 ("\\r", stream);
	  break;
	case '\033':
	  FUNC2 ("\\e", stream);
	  break;
	case '\007':
	  FUNC2 ("\\a", stream);
	  break;
	default:
	  FUNC1 (stream, "\\%.3o", (unsigned int) c);
	  break;
	}
    }
}