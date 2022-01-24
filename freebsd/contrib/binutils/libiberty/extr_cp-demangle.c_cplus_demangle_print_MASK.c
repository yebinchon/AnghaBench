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
struct demangle_component {int dummy; } ;
struct d_growable_string {char* buf; int alc; scalar_t__ allocation_failure; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct demangle_component const*,int /*<<< orphan*/ ,struct d_growable_string*) ; 
 int /*<<< orphan*/  d_growable_string_callback_adapter ; 
 int /*<<< orphan*/  FUNC1 (struct d_growable_string*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char *
FUNC3 (int options, const struct demangle_component *dc,
                      int estimate, size_t *palc)
{
  struct d_growable_string dgs;

  FUNC1 (&dgs, estimate);

  if (! FUNC0 (options, dc,
                                       d_growable_string_callback_adapter,
                                       &dgs))
    {
      FUNC2 (dgs.buf);
      *palc = 0;
      return NULL;
    }

  *palc = dgs.allocation_failure ? 1 : dgs.alc;
  return dgs.buf;
}