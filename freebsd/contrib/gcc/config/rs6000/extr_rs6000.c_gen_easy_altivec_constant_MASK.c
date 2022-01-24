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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  HImode ; 
 int /*<<< orphan*/  QImode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  V16QImode ; 
 int /*<<< orphan*/  V4SImode ; 
 int /*<<< orphan*/  V8HImode ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

rtx
FUNC7 (rtx op)
{
  enum machine_mode mode = FUNC1 (op);
  int nunits = FUNC2 (mode);
  rtx last = FUNC0 (op, nunits - 1);
  unsigned step = nunits / 4;
  unsigned copies = 1;

  /* Start with a vspltisw.  */
  if (FUNC6 (op, step, copies))
    return FUNC5 (V4SImode, FUNC4 (SImode, last));

  /* Then try with a vspltish.  */
  if (step == 1)
    copies <<= 1;
  else
    step >>= 1;

  if (FUNC6 (op, step, copies))
    return FUNC5 (V8HImode, FUNC4 (HImode, last));

  /* And finally a vspltisb.  */
  if (step == 1)
    copies <<= 1;
  else
    step >>= 1;

  if (FUNC6 (op, step, copies))
    return FUNC5 (V16QImode, FUNC4 (QImode, last));

  FUNC3 ();
}