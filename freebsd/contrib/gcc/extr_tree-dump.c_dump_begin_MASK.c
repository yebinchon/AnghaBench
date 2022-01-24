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
struct dump_file_info {int state; int flags; } ;
typedef  enum tree_dump_index { ____Placeholder_tree_dump_index } tree_dump_index ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TDI_none ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct dump_file_info* FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

FILE *
FUNC7 (enum tree_dump_index phase, int *flag_ptr)
{
  char *name;
  struct dump_file_info *dfi;
  FILE *stream;

  if (phase == TDI_none || !FUNC0 (phase))
    return NULL;

  name = FUNC5 (phase);
  dfi = FUNC4 (phase);
  stream = FUNC2 (name, dfi->state < 0 ? "w" : "a");
  if (!stream)
    FUNC1 ("could not open dump file %qs: %s", name, FUNC6 (errno));
  else
    dfi->state = 1;
  FUNC3 (name);

  if (flag_ptr)
    *flag_ptr = dfi->flags;

  return stream;
}