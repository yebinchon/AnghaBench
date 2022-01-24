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
struct obstack {int dummy; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct obstack* rtl_obstack ; 
 scalar_t__ FUNC2 (scalar_t__,int,int) ; 
 struct obstack* temp_obstack ; 

__attribute__((used)) static rtx
FUNC3 (rtx exp, int insn_code, int insn_index)
{
  rtx x;
  struct obstack *old;
  if (FUNC0 (exp))
    return exp;
  old = rtl_obstack;
  rtl_obstack = temp_obstack;
  x = FUNC2 (exp, insn_code, insn_index);
  rtl_obstack = old;
  if (x == exp || rtl_obstack == temp_obstack)
    return x;
  return FUNC1 (x);
}