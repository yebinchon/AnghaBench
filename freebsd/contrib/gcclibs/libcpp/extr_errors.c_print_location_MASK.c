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
struct line_map {char* to_file; } ;
typedef  scalar_t__ source_location ;
struct TYPE_4__ {int /*<<< orphan*/  line_table; } ;
typedef  TYPE_1__ cpp_reader ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct line_map const*,scalar_t__) ; 
 unsigned int FUNC2 (struct line_map const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 struct line_map* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct line_map const*) ; 
 char* progname ; 
 int /*<<< orphan*/  show_column ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7 (cpp_reader *pfile, source_location line, unsigned int col)
{
  if (line == 0)
    FUNC3 (stderr, "%s: ", progname);
  else
    {
      const struct line_map *map;
      unsigned int lin;

      map = FUNC5 (pfile->line_table, line);
      FUNC6 (pfile->line_table, map);

      lin = FUNC2 (map, line);
      if (col == 0)
	{
	  col = FUNC1 (map, line);
	  if (col == 0)
	    col = 1;
	}

      if (lin == 0)
	FUNC3 (stderr, "%s:", map->to_file);
      else if (FUNC0 (pfile, show_column) == 0)
	FUNC3 (stderr, "%s:%u:", map->to_file, lin);
      else
	FUNC3 (stderr, "%s:%u:%u:", map->to_file, lin, col);

      FUNC4 (' ', stderr);
    }
}