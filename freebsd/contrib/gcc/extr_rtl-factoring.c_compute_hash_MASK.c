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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static unsigned int
FUNC2 (rtx insn)
{
  unsigned int hash = 0;
  rtx prev;

  hash = FUNC0 (insn) * 100;

  prev = FUNC1 (insn);
  if (prev)
    hash += FUNC0 (prev);

  return hash;
}