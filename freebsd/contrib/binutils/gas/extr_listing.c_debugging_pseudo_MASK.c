#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* next; scalar_t__ debugging; } ;
typedef  TYPE_2__ list_info_type ;
struct TYPE_4__ {scalar_t__ debugging; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC2 (list_info_type *list, const char *line)
{
  static int in_debug;
  int was_debug;

  if (list->debugging)
    {
      in_debug = 1;
      return 1;
    }

  was_debug = in_debug;
  in_debug = 0;

  while (FUNC0 (*line))
    line++;

  if (*line != '.')
    {
#ifdef OBJ_ELF
      /* The ELF compiler sometimes emits blank lines after switching
         out of a debugging section.  If the next line drops us back
         into debugging information, then don't print the blank line.
         This is a hack for a particular compiler behaviour, not a
         general case.  */
      if (was_debug
	  && *line == '\0'
	  && list->next != NULL
	  && list->next->debugging)
	{
	  in_debug = 1;
	  return 1;
	}
#endif

      return 0;
    }

  line++;

  if (FUNC1 (line, "def", 3) == 0)
    return 1;
  if (FUNC1 (line, "val", 3) == 0)
    return 1;
  if (FUNC1 (line, "scl", 3) == 0)
    return 1;
  if (FUNC1 (line, "line", 4) == 0)
    return 1;
  if (FUNC1 (line, "endef", 5) == 0)
    return 1;
  if (FUNC1 (line, "ln", 2) == 0)
    return 1;
  if (FUNC1 (line, "type", 4) == 0)
    return 1;
  if (FUNC1 (line, "size", 4) == 0)
    return 1;
  if (FUNC1 (line, "dim", 3) == 0)
    return 1;
  if (FUNC1 (line, "tag", 3) == 0)
    return 1;
  if (FUNC1 (line, "stabs", 5) == 0)
    return 1;
  if (FUNC1 (line, "stabn", 5) == 0)
    return 1;

  return 0;
}