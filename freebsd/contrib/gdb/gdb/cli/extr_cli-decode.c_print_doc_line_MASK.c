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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 

void
FUNC6 (struct ui_file *stream, char *str)
{
  static char *line_buffer = 0;
  static int line_size;
  char *p;

  if (!line_buffer)
    {
      line_size = 80;
      line_buffer = (char *) FUNC5 (line_size);
    }

  p = str;
  while (*p && *p != '\n' && *p != '.' && *p != ',')
    p++;
  if (p - str > line_size - 1)
    {
      line_size = p - str + 1;
      FUNC4 (line_buffer);
      line_buffer = (char *) FUNC5 (line_size);
    }
  FUNC1 (line_buffer, str, p - str);
  line_buffer[p - str] = '\0';
  if (FUNC0 (line_buffer[0]))
    line_buffer[0] = FUNC2 (line_buffer[0]);
  FUNC3 (uiout, line_buffer);
}