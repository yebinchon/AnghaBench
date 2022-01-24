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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char *s;

  FUNC0 (info->stack != NULL);

  s = FUNC1 (info->stack->type, '|');
  if (s != NULL && s[1] == '[')
    return FUNC2 (info, "(*|)");
  return FUNC2 (info, "*|");
}