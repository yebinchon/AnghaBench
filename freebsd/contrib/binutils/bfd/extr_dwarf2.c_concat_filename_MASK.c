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
struct line_info_table {unsigned int num_files; char** dirs; char* comp_dir; TYPE_1__* files; } ;
struct TYPE_2__ {char* name; int dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,...) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC8 (struct line_info_table *table, unsigned int file)
{
  char *filename;

  if (file - 1 >= table->num_files)
    {
      /* FILE == 0 means unknown.  */
      if (file)
	FUNC2)
	  (FUNC1("Dwarf Error: mangled line number section (bad file number)."));
      return FUNC5 ("<unknown>");
    }

  filename = table->files[file - 1].name;

  if (!FUNC0 (filename))
    {
      char *dirname = NULL;
      char *subdirname = NULL;
      char *name;
      size_t len;

      if (table->files[file - 1].dir)
	subdirname = table->dirs[table->files[file - 1].dir - 1];

      if (!subdirname || !FUNC0 (subdirname))
	dirname = table->comp_dir;

      if (!dirname)
	{
	  dirname = subdirname;
	  subdirname = NULL;
	}

      if (!dirname)
	return FUNC5 (filename);

      len = FUNC6 (dirname) + FUNC6 (filename) + 2;

      if (subdirname)
	{
	  len += FUNC6 (subdirname) + 1;
	  name = FUNC3 (len);
	  if (name)
	    FUNC4 (name, "%s/%s/%s", dirname, subdirname, filename);
	}
      else
	{
	  name = FUNC3 (len);
	  if (name)
	    FUNC4 (name, "%s/%s", dirname, filename);
	}

      return name;
    }

  return FUNC5 (filename);
}