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
struct d_growable_string {char* buf; scalar_t__ allocation_failure; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,int /*<<< orphan*/ ,struct d_growable_string*) ; 
 int /*<<< orphan*/  d_growable_string_callback_adapter ; 
 int /*<<< orphan*/  FUNC1 (struct d_growable_string*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3 (const char *mangled, int options, size_t *palc)
{
  struct d_growable_string dgs;
  int status;

  FUNC1 (&dgs, 0);

  status = FUNC0 (mangled, options,
                                d_growable_string_callback_adapter, &dgs);
  if (status == 0)
    {
      FUNC2 (dgs.buf);
      *palc = 0;
      return NULL;
    }

  *palc = dgs.allocation_failure ? 1 : 0;
  return dgs.buf;
}