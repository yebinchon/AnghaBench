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
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (int c, struct ui_file *stream, int quoter)
{
  switch (c)
    {
    case '\\':
    case '\'':
      FUNC0 (stream, "\\%c", c);
      break;
    case '\b':
      FUNC2 ("\\b", stream);
      break;
    case '\t':
      FUNC2 ("\\t", stream);
      break;
    case '\n':
      FUNC2 ("\\n", stream);
      break;
    case '\f':
      FUNC2 ("\\f", stream);
      break;
    case '\r':
      FUNC2 ("\\r", stream);
      break;
    default:
      if (FUNC3 (c))
	FUNC1 (c, stream);
      else
	FUNC0 (stream, "\\u%.4x", (unsigned int) c);
      break;
    }
}