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
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int /*<<< orphan*/  (* create_basic_block ) (void*,void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t CDI_DOMINATORS ; 
 size_t CDI_POST_DOMINATORS ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* cfg_hooks ; 
 scalar_t__* dom_computed ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 

basic_block
FUNC3 (void *head, void *end, basic_block after)
{
  basic_block ret;

  if (!cfg_hooks->create_basic_block)
    FUNC1 ("%s does not support create_basic_block", cfg_hooks->name);

  ret = cfg_hooks->create_basic_block (head, end, after);

  if (dom_computed[CDI_DOMINATORS])
    FUNC0 (CDI_DOMINATORS, ret);
  if (dom_computed[CDI_POST_DOMINATORS])
    FUNC0 (CDI_POST_DOMINATORS, ret);

  return ret;
}