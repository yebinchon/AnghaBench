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
FUNC3 (int c, struct ui_file *stream, int *in_quotes)
{

  c &= 0xFF;			/* Avoid sign bit follies */

  if ((c == '\'') || (FUNC0 (c)))
    {
      if (!(*in_quotes))
	FUNC2 ("'", stream);
      *in_quotes = 1;
      if (c == '\'')
	{
	  FUNC2 ("''", stream);
	}
      else
	FUNC1 (stream, "%c", c);
    }
  else
    {
      if (*in_quotes)
	FUNC2 ("'", stream);
      *in_quotes = 0;
      FUNC1 (stream, "#%d", (unsigned int) c);
    }
}