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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ DFmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_SPE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static rtx
FUNC6 (rtx reg)
{
  unsigned regno;

  if (TARGET_SPE
      && (FUNC2 (FUNC0 (reg))
	  || (TARGET_E500_DOUBLE && FUNC0 (reg) == DFmode)))
    ;
  else
    return NULL_RTX;

  regno = FUNC1 (reg);

  /* The duality of the SPE register size wreaks all kinds of havoc.
     This is a way of distinguishing r0 in 32-bits from r0 in
     64-bits.  */
  return
    FUNC4 (VOIDmode,
		      BYTES_BIG_ENDIAN
		      ? FUNC3 (2,
				   FUNC5 (SImode, regno + 1200),
				   FUNC5 (SImode, regno))
		      : FUNC3 (2,
				   FUNC5 (SImode, regno),
				   FUNC5 (SImode, regno + 1200)));
}