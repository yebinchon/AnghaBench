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
struct deps {size_t ndeps; size_t** depv; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (size_t*,size_t,int,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (size_t*) ; 

int
FUNC2 (struct deps *deps, FILE *f)
{
  unsigned int i;

  /* The cppreader structure contains makefile dependences.  Write out this
     structure.  */

  /* The number of dependences.  */
  if (FUNC0 (&deps->ndeps, sizeof (deps->ndeps), 1, f) != 1)
      return -1;
  /* The length of each dependence followed by the string.  */
  for (i = 0; i < deps->ndeps; i++)
    {
      size_t num_to_write = FUNC1 (deps->depv[i]);
      if (FUNC0 (&num_to_write, sizeof (size_t), 1, f) != 1)
          return -1;
      if (FUNC0 (deps->depv[i], num_to_write, 1, f) != 1)
          return -1;
    }

  return 0;
}