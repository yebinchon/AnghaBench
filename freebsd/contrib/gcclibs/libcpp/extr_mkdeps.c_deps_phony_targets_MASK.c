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
struct deps {unsigned int ndeps; int /*<<< orphan*/ * depv; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 

void
FUNC2 (const struct deps *d, FILE *fp)
{
  unsigned int i;

  for (i = 1; i < d->ndeps; i++)
    {
      FUNC1 ('\n', fp);
      FUNC0 (d->depv[i], fp);
      FUNC1 (':', fp);
      FUNC1 ('\n', fp);
    }
}