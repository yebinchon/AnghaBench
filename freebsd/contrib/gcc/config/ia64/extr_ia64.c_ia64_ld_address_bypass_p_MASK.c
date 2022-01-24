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
typedef  int rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ IF_THEN_ELSE ; 
 scalar_t__ LO_SUM ; 
 scalar_t__ MEM ; 
 scalar_t__ REG ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ SUBREG ; 
 int FUNC3 (int) ; 
 scalar_t__ UNSPEC ; 
 int UNSPEC_LDA ; 
 int UNSPEC_LDCCLR ; 
 int UNSPEC_LDS ; 
 int UNSPEC_LDSA ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTEND ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int,int) ; 

int
FUNC11 (rtx producer, rtx consumer)
{
  rtx dest, src, reg, mem;

  FUNC8 (producer && consumer);
  dest = FUNC9 (producer);
  FUNC8 (dest);
  reg = FUNC1 (dest);
  FUNC8 (reg);
  if (FUNC0 (reg) == SUBREG)
    reg = FUNC3 (reg);
  FUNC8 (FUNC0 (reg) == REG);
  
  src = FUNC9 (consumer);
  FUNC8 (src);
  mem = FUNC2 (src);
  FUNC8 (mem);
 
  if (FUNC0 (mem) == UNSPEC && FUNC7 (mem, 0) > 0)
    mem = FUNC6 (mem, 0, 0);
  else if (FUNC0 (mem) == IF_THEN_ELSE)
    /* ??? Is this bypass necessary for ld.c?  */
    {
      FUNC8 (FUNC5 (FUNC4 (FUNC4 (mem, 0), 0), 1) == UNSPEC_LDCCLR);
      mem = FUNC4 (mem, 1);
    }
     
  while (FUNC0 (mem) == SUBREG || FUNC0 (mem) == ZERO_EXTEND)
    mem = FUNC4 (mem, 0);

  if (FUNC0 (mem) == UNSPEC)
    {
      int c = FUNC5 (mem, 1);

      FUNC8 (c == UNSPEC_LDA || c == UNSPEC_LDS || c == UNSPEC_LDSA);
      mem = FUNC6 (mem, 0, 0);
    }

  /* Note that LO_SUM is used for GOT loads.  */
  FUNC8 (FUNC0 (mem) == LO_SUM || FUNC0 (mem) == MEM);

  return FUNC10 (reg, mem);
}