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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2 (FILE *stream, const char *string, int *col_p, int *first_p)
{
  if (*first_p)
    {
      FUNC0 (stream, "%24s", "");
      *col_p = 24;
    }
  else
    {
      FUNC0 (stream, ", ");
      *col_p += 2;
    }

  if (*col_p + FUNC1 (string) > 72)
    {
      FUNC0 (stream, "\n%24s", "");
      *col_p = 24;
    }

  FUNC0 (stream, "%s", string);
  *col_p += FUNC1 (string);

  *first_p = 0;
}