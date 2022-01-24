#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sbitmap ;
struct TYPE_4__ {int n_bits; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC2 (FILE *file, sbitmap bmap)
{
  unsigned int i, pos;

  FUNC1 (file, "n_bits = %d, set = {", bmap->n_bits);

  for (pos = 30, i = 0; i < bmap->n_bits; i++)
    if (FUNC0 (bmap, i))
      {
	if (pos > 70)
	  {
	    FUNC1 (file, "\n  ");
	    pos = 0;
	  }

	FUNC1 (file, "%d ", i);
	pos += 2 + (i >= 10) + (i >= 100) + (i >= 1000);
      }

  FUNC1 (file, "}\n");
}