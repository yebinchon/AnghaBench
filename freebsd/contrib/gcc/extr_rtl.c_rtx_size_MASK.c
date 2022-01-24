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
struct block_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int RTX_HDR_SIZE ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC3 (rtx x)
{
  if (FUNC0 (x) == SYMBOL_REF && FUNC2 (x))
    return RTX_HDR_SIZE + sizeof (struct block_symbol);
  return FUNC1 (FUNC0 (x));
}