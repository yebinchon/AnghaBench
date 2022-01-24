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
struct mapping {scalar_t__ index; struct macro_group* group; } ;
struct macro_group {scalar_t__ num_builtins; scalar_t__ (* uses_macro_p ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC8 (rtx x, struct mapping *macro)
{
  struct macro_group *group;
  const char *format_ptr;
  int i, j;

  if (x == 0)
    return false;

  group = macro->group;
  if (group->uses_macro_p (x, macro->index + group->num_builtins))
    return true;

  format_ptr = FUNC2 (FUNC0 (FUNC1 (x)));
  for (i = 0; format_ptr[i] != 0; i++)
    switch (format_ptr[i])
      {
      case 'e':
	if (FUNC8 (FUNC3 (x, i), macro))
	  return true;
	break;

      case 'V':
      case 'E':
	if (FUNC4 (x, i))
	  for (j = 0; j < FUNC6 (x, i); j++)
	    if (FUNC8 (FUNC5 (x, i, j), macro))
	      return true;
	break;

      default:
	break;
      }
  return false;
}