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
struct subfile {int /*<<< orphan*/  name; struct subfile* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 struct subfile* current_subfile ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 struct subfile* subfiles ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *filename, char *dirname)
{
  /* If the filename isn't absolute, try to match an existing subfile
     with the full pathname.  */

  if (!FUNC1 (filename) && dirname != NULL)
    {
      struct subfile *subfile;
      char *fullname = FUNC2 (dirname, "/", filename, NULL);

      for (subfile = subfiles; subfile; subfile = subfile->next)
	{
	  if (FUNC0 (subfile->name, fullname) == 0)
	    {
	      current_subfile = subfile;
	      FUNC4 (fullname);
	      return;
	    }
	}
      FUNC4 (fullname);
    }
  FUNC3 (filename, dirname);
}