#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct line_map {scalar_t__ reason; int /*<<< orphan*/  start_location; } ;
struct TYPE_4__ {int /*<<< orphan*/  preprocessed; } ;
struct TYPE_3__ {scalar_t__ first_time; } ;

/* Variables and functions */
 struct line_map* FUNC0 (int /*<<< orphan*/ *,struct line_map const*) ; 
 int /*<<< orphan*/  FUNC1 (struct line_map const*) ; 
 scalar_t__ LC_ENTER ; 
 scalar_t__ LC_LEAVE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_no_line_commands ; 
 int /*<<< orphan*/  line_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_in ; 
 TYPE_1__ print ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

void
FUNC5 (const struct line_map *map)
{
  const char *flags = "";

  if (flag_no_line_commands)
    return;

  if (map != NULL)
    {
      if (print.first_time)
	{
	  /* Avoid printing foo.i when the main file is foo.c.  */
	  if (!FUNC2 (parse_in)->preprocessed)
	    FUNC4 (map->start_location, flags);
	  print.first_time = 0;
	}
      else
	{
	  /* Bring current file to correct line when entering a new file.  */
	  if (map->reason == LC_ENTER)
	    {
	      const struct line_map *from = FUNC0 (&line_table, map);
	      FUNC3 (FUNC1 (from));
	    }
	  if (map->reason == LC_ENTER)
	    flags = " 1";
	  else if (map->reason == LC_LEAVE)
	    flags = " 2";
	  FUNC4 (map->start_location, flags);
	}
    }
}