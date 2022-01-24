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
struct deps {unsigned int ntargets; char** targetv; unsigned int ndeps; char** depv; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (char*) ; 

void
FUNC3 (const struct deps *d, FILE *fp, unsigned int colmax)
{
  unsigned int size, i, column;

  column = 0;
  if (colmax && colmax < 34)
    colmax = 34;

  for (i = 0; i < d->ntargets; i++)
    {
      size = FUNC2 (d->targetv[i]);
      column += size;
      if (colmax && column > colmax)
	{
	  FUNC0 (" \\\n ", fp);
	  column = 1 + size;
	}
      if (i)
	{
	  FUNC1 (' ', fp);
	  column++;
	}
      FUNC0 (d->targetv[i], fp);
    }

  FUNC1 (':', fp);
  FUNC1 (' ', fp);
  column += 2;

  for (i = 0; i < d->ndeps; i++)
    {
      size = FUNC2 (d->depv[i]);
      column += size;
      if (colmax && column > colmax)
	{
	  FUNC0 (" \\\n ", fp);
	  column = 1 + size;
	}
      if (i)
	{
	  FUNC1 (' ', fp);
	  column++;
	}
      FUNC0 (d->depv[i], fp);
    }
  FUNC1 ('\n', fp);
}