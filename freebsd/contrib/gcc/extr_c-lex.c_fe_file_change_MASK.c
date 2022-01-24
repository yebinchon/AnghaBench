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
struct line_map {scalar_t__ reason; int start_location; int sysp; int to_line; int /*<<< orphan*/  to_file; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* end_source_file ) (int) ;int /*<<< orphan*/  (* start_source_file ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct line_map const*) ; 
 int FUNC1 (struct line_map const*) ; 
 scalar_t__ LC_ENTER ; 
 scalar_t__ LC_LEAVE ; 
 int /*<<< orphan*/  FUNC2 (struct line_map const*) ; 
 int c_header_level ; 
 TYPE_1__* debug_hooks ; 
 int in_system_header ; 
 int /*<<< orphan*/  input_filename ; 
 int input_line ; 
 int input_location ; 
 int /*<<< orphan*/  pending_lang_change ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void
FUNC9 (const struct line_map *new_map)
{
  if (new_map == NULL)
    return;

  if (new_map->reason == LC_ENTER)
    {
      /* Don't stack the main buffer on the input stack;
	 we already did in compile_file.  */
      if (!FUNC2 (new_map))
	{
#ifdef USE_MAPPED_LOCATION
	  int included_at = LAST_SOURCE_LINE_LOCATION (new_map - 1);

	  input_location = included_at;
	  push_srcloc (new_map->start_location);
#else
	  int included_at = FUNC0 (new_map - 1);

	  input_line = included_at;
	  FUNC4 (new_map->to_file, 1);
#endif
	  (*debug_hooks->start_source_file) (included_at, new_map->to_file);
#ifndef NO_IMPLICIT_EXTERN_C
	  if (c_header_level)
	    ++c_header_level;
	  else if (new_map->sysp == 2)
	    {
	      c_header_level = 1;
	      ++pending_lang_change;
	    }
#endif
	}
    }
  else if (new_map->reason == LC_LEAVE)
    {
#ifndef NO_IMPLICIT_EXTERN_C
      if (c_header_level && --c_header_level == 0)
	{
	  if (new_map->sysp == 2)
	    FUNC8 (0, "badly nested C headers from preprocessor");
	  --pending_lang_change;
	}
#endif
      FUNC3 ();

      (*debug_hooks->end_source_file) (new_map->to_line);
    }

  FUNC7 (new_map->to_file);
  in_system_header = new_map->sysp != 0;
#ifdef USE_MAPPED_LOCATION
  input_location = new_map->start_location;
#else
  input_filename = new_map->to_file;
  input_line = new_map->to_line;
#endif
}