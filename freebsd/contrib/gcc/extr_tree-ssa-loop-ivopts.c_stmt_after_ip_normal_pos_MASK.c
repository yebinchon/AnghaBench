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
typedef  scalar_t__ tree ;
struct loop {scalar_t__ latch; } ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct loop*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC4 (struct loop *loop, tree stmt)
{
  basic_block bb = FUNC2 (loop), sbb = FUNC0 (stmt);

  FUNC1 (bb);

  if (sbb == loop->latch)
    return true;

  if (sbb != bb)
    return false;

  return stmt == FUNC3 (bb);
}