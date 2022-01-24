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
typedef  int /*<<< orphan*/  sbitmap ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int EDGE_ABNORMAL ; 
 int EDGE_ABNORMAL_CALL ; 
 int EDGE_EH ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void
FUNC5 (sbitmap edge_cache, basic_block src, rtx insn)
{
  int is_call = FUNC0 (insn) ? EDGE_ABNORMAL_CALL : 0;
  rtx handlers, i;

  handlers = FUNC4 (insn);

  for (i = handlers; i; i = FUNC1 (i, 1))
    FUNC3 (edge_cache, src, FUNC1 (i, 0),
		     EDGE_ABNORMAL | EDGE_EH | is_call);

  FUNC2 (&handlers);
}