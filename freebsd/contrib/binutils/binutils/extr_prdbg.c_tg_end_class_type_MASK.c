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
struct pr_handle {char* filename; int /*<<< orphan*/  f; TYPE_1__* stack; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {char* type; char* flavor; char* parents; scalar_t__ num_parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;

  FUNC0 (info->f, "%s\t%s\t0;\"\tkind:c\ttype:%s", info->stack->type,
	   info->filename, info->stack->flavor);
  if (info->stack->num_parents)
    {
      FUNC0  (info->f, "\tinherits:%s", info->stack->parents);
      FUNC2 (info->stack->parents);
    }
  FUNC1 ('\n', info->f);

  return FUNC3 (p);
}