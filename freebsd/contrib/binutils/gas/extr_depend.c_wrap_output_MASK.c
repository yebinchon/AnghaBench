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
 int MAX_COLUMNS ; 
 int column ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC3 (FILE *f, char *string, int spacer)
{
  int len = FUNC2 (NULL, string);

  if (len == 0)
    return;

  if (column
      && (MAX_COLUMNS
	  - 1 /* spacer */
	  - 2 /* ` \'   */
	  < column + len))
    {
      FUNC0 (f, " \\\n ");
      column = 0;
      if (spacer == ' ')
	spacer = '\0';
    }

  if (spacer == ' ')
    {
      FUNC1 (spacer, f);
      ++column;
    }

  FUNC2 (f, string);
  column += len;

  if (spacer == ':')
    {
      FUNC1 (spacer, f);
      ++column;
    }
}