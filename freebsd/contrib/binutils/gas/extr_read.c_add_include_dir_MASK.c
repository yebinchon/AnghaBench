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

/* Variables and functions */
 int include_dir_count ; 
 int include_dir_maxlen ; 
 char** include_dirs ; 
 scalar_t__ FUNC0 (char**,int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 

void
FUNC3 (char *path)
{
  int i;

  if (include_dir_count == 0)
    {
      include_dirs = (char **) FUNC2 (2 * sizeof (*include_dirs));
      include_dirs[0] = ".";	/* Current dir.  */
      include_dir_count = 2;
    }
  else
    {
      include_dir_count++;
      include_dirs =
	(char **) FUNC0 (include_dirs,
			   include_dir_count * sizeof (*include_dirs));
    }

  include_dirs[include_dir_count - 1] = path;	/* New one.  */

  i = FUNC1 (path);
  if (i > include_dir_maxlen)
    include_dir_maxlen = i;
}