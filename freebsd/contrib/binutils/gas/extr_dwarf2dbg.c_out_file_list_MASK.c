#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* filename; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long) ; 
 char** dirs ; 
 unsigned int dirs_in_use ; 
 TYPE_1__* files ; 
 unsigned int files_in_use ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  size_t size;
  char *cp;
  unsigned int i;

  /* Emit directory list.  */
  for (i = 1; i < dirs_in_use; ++i)
    {
      size = FUNC6 (dirs[i]) + 1;
      cp = FUNC2 (size);
      FUNC3 (cp, dirs[i], size);
    }
  /* Terminate it.  */
  FUNC4 ('\0');

  for (i = 1; i < files_in_use; ++i)
    {
      if (files[i].filename == NULL)
	{
	  FUNC1 (FUNC0("unassigned file number %ld"), (long) i);
	  /* Prevent a crash later, particularly for file 1.  */
	  files[i].filename = "";
	  continue;
	}

      size = FUNC6 (files[i].filename) + 1;
      cp = FUNC2 (size);
      FUNC3 (cp, files[i].filename, size);

      FUNC5 (files[i].dir);	/* directory number */
      FUNC5 (0);			/* last modification timestamp */
      FUNC5 (0);			/* filesize */
    }

  /* Terminate filename list.  */
  FUNC4 (0);
}