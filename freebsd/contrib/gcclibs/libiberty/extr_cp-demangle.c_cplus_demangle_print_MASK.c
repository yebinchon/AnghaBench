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
struct d_print_info {int options; int alc; char* buf; size_t allocation_failure; int /*<<< orphan*/ * modifiers; int /*<<< orphan*/ * templates; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,struct demangle_component const*) ; 
 scalar_t__ FUNC2 (int) ; 

char *
FUNC3 (int options, const struct demangle_component *dc,
                      int estimate, size_t *palc)
{
  struct d_print_info dpi;

  dpi.options = options;

  dpi.alc = estimate + 1;
  dpi.buf = (char *) FUNC2 (dpi.alc);
  if (dpi.buf == NULL)
    {
      *palc = 1;
      return NULL;
    }

  dpi.len = 0;
  dpi.templates = NULL;
  dpi.modifiers = NULL;

  dpi.allocation_failure = 0;

  FUNC1 (&dpi, dc);

  FUNC0 (&dpi, '\0');

  if (dpi.buf != NULL)
    *palc = dpi.alc;
  else
    *palc = dpi.allocation_failure;

  return dpi.buf;
}