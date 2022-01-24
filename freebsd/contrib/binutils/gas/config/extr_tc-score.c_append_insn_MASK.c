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
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {int /*<<< orphan*/ * error; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ inst ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (char *str, bfd_boolean gen_frag_p)
{
  int retval = SUCCESS;

  FUNC2 (str, gen_frag_p);

  if (inst.error)
    {
      retval = (int) FAIL;
      FUNC1 (FUNC0("%s -- `%s'"), inst.error, inst.str);
      inst.error = NULL;
    }

  return retval;
}