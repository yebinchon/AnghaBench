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
struct pr_handle {TYPE_1__* stack; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {char* parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 unsigned int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct pr_handle *info, const char *s)
{
  unsigned int len;

  if (s == NULL)
    return FALSE;

  FUNC0 (info->stack != NULL);

  len = info->stack->parents ? FUNC2 (info->stack->parents) : 0;
  info->stack->parents = (char *) FUNC3 (info->stack->parents,
					    len + FUNC2 (s) + 1);
  FUNC1 (info->stack->parents + len, s);

  return TRUE;
}