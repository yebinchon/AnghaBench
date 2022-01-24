#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct line_map {int /*<<< orphan*/  to_file; } ;
struct TYPE_10__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ source_location ;
typedef  TYPE_1__ location_t ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef  TYPE_3__ cpp_token ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_NAME ; 
 int /*<<< orphan*/  OPT_Wunknown_pragmas ; 
 int /*<<< orphan*/  FUNC0 (struct line_map const*,TYPE_1__) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 scalar_t__ in_system_header ; 
 int /*<<< orphan*/  line_table ; 
 struct line_map* FUNC3 (int /*<<< orphan*/ *,TYPE_1__) ; 
 scalar_t__ warn_unknown_pragmas ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_1__*,unsigned char const*,unsigned char const*) ; 

__attribute__((used)) static void
FUNC5 (cpp_reader *pfile, source_location loc)
{
  /* Issue a warning message if we have been asked to do so.  Ignore
     unknown pragmas in system headers unless an explicit
     -Wunknown-pragmas has been given.  */
  if (warn_unknown_pragmas > in_system_header)
    {
      const unsigned char *space, *name;
      const cpp_token *s;
#ifndef USE_MAPPED_LOCATION
      location_t fe_loc;
      const struct line_map *map = FUNC3 (&line_table, loc);
      fe_loc.file = map->to_file;
      fe_loc.line = FUNC0 (map, loc);
#else
      location_t fe_loc = loc;
#endif

      space = name = (const unsigned char *) "";
      s = FUNC1 (pfile);
      if (s->type != CPP_EOF)
	{
	  space = FUNC2 (pfile, s);
	  s = FUNC1 (pfile);
	  if (s->type == CPP_NAME)
	    name = FUNC2 (pfile, s);
	}

      FUNC4 (OPT_Wunknown_pragmas, "%Hignoring #pragma %s %s",
	       &fe_loc, space, name);
    }
}