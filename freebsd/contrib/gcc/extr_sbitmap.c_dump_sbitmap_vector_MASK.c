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
typedef  int /*<<< orphan*/  sbitmap ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC2 (FILE *file, const char *title, const char *subtitle,
		     sbitmap *bmaps, int n_maps)
{
  int bb;

  FUNC1 (file, "%s\n", title);
  for (bb = 0; bb < n_maps; bb++)
    {
      FUNC1 (file, "%s %d\n", subtitle, bb);
      FUNC0 (file, bmaps[bb]);
    }

  FUNC1 (file, "\n");
}