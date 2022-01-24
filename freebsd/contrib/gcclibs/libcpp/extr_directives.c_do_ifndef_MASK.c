#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  skipping; } ;
struct TYPE_12__ {TYPE_1__ state; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_13__ {scalar_t__ type; } ;
typedef  TYPE_3__ cpp_hashnode ;

/* Variables and functions */
 scalar_t__ NT_MACRO ; 
 int /*<<< orphan*/  T_IFNDEF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_3__ const*) ; 

__attribute__((used)) static void
FUNC4 (cpp_reader *pfile)
{
  int skip = 1;
  const cpp_hashnode *node = 0;

  if (! pfile->state.skipping)
    {
      node = FUNC2 (pfile);

      if (node)
	{
	  skip = node->type == NT_MACRO;
	  FUNC0 (node);
	  FUNC1 (pfile);
	}
    }

  FUNC3 (pfile, skip, T_IFNDEF, node);
}