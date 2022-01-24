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
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_ALTIVEC ; 
 int TARGET_SPE ; 
#define  V16QImode 130 
#define  V4SImode 129 
#define  V8HImode 128 
 scalar_t__ VEC_DUPLICATE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 

const char *
FUNC10 (rtx *operands)
{
  int cst, cst2;
  enum machine_mode mode;
  rtx dest, vec;

  dest = operands[0];
  vec = operands[1];
  mode = FUNC3 (dest);

  if (TARGET_ALTIVEC)
    {
      rtx splat_vec;
      if (FUNC9 (vec, mode))
	return "vxor %0,%0,%0";

      splat_vec = FUNC8 (vec);
      FUNC6 (FUNC2 (splat_vec) == VEC_DUPLICATE);
      operands[1] = FUNC5 (splat_vec, 0);
      if (!FUNC1 (FUNC4 (operands[1])))
	return "#";

      switch (FUNC3 (splat_vec))
	{
	case V4SImode:
	  return "vspltisw %0,%1";

	case V8HImode:
	  return "vspltish %0,%1";

	case V16QImode:
	  return "vspltisb %0,%1";

	default:
	  FUNC7 ();
	}
    }

  FUNC6 (TARGET_SPE);

  /* Vector constant 0 is handled as a splitter of V2SI, and in the
     pattern of V1DI, V4HI, and V2SF.

     FIXME: We should probably return # and add post reload
     splitters for these, but this way is so easy ;-).  */
  cst = FUNC4 (FUNC0 (vec, 0));
  cst2 = FUNC4 (FUNC0 (vec, 1));
  operands[1] = FUNC0 (vec, 0);
  operands[2] = FUNC0 (vec, 1);
  if (cst == cst2)
    return "li %0,%1\n\tevmergelo %0,%0,%0";
  else
    return "li %0,%1\n\tevmergelo %0,%0,%0\n\tli %0,%2";
}