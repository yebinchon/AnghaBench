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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  alpha_gdbarch_init ; 
 int /*<<< orphan*/  bfd_arch_alpha ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  heuristic_fence_post ; 
 int /*<<< orphan*/  reinit_frame_cache_sfunc ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC4 (void)
{
  struct cmd_list_element *c;

  FUNC2 (bfd_arch_alpha, alpha_gdbarch_init, NULL);

  /* Let the user set the fence post for heuristic_proc_start.  */

  /* We really would like to have both "0" and "unlimited" work, but
     command.c doesn't deal with that.  So make it a var_zinteger
     because the user can always use "999999" or some such for unlimited.  */
  c = FUNC0 ("heuristic-fence-post", class_support, var_zinteger,
		   (char *) &heuristic_fence_post,
		   "\
Set the distance searched for the start of a function.\n\
If you are debugging a stripped executable, GDB needs to search through the\n\
program for the start of a function.  This command sets the distance of the\n\
search.  The only need to set it is when debugging a stripped executable.",
		   &setlist);
  /* We need to throw away the frame cache when we set this, since it
     might change our ability to get backtraces.  */
  FUNC3 (c, reinit_frame_cache_sfunc);
  FUNC1 (c, &showlist);
}