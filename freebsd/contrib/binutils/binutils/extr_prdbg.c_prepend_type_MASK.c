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
struct TYPE_2__ {char const* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (struct pr_handle *info, const char *s)
{
  char *n;

  FUNC0 (info->stack != NULL);

  n = (char *) FUNC4 (FUNC3 (s) + FUNC3 (info->stack->type) + 1);
  FUNC2 (n, "%s%s", s, info->stack->type);
  FUNC1 (info->stack->type);
  info->stack->type = n;

  return TRUE;
}