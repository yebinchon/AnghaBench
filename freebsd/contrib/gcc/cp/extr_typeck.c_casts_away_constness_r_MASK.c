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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC7 (tree *t1, tree *t2)
{
  int quals1;
  int quals2;

  /* [expr.const.cast]

     For multi-level pointer to members and multi-level mixed pointers
     and pointers to members (conv.qual), the "member" aspect of a
     pointer to member level is ignored when determining if a const
     cv-qualifier has been cast away.  */
  /* [expr.const.cast]

     For  two  pointer types:

	    X1 is T1cv1,1 * ... cv1,N *   where T1 is not a pointer type
	    X2 is T2cv2,1 * ... cv2,M *   where T2 is not a pointer type
	    K is min(N,M)

     casting from X1 to X2 casts away constness if, for a non-pointer
     type T there does not exist an implicit conversion (clause
     _conv_) from:

	    Tcv1,(N-K+1) * cv1,(N-K+2) * ... cv1,N *

     to

	    Tcv2,(M-K+1) * cv2,(M-K+2) * ... cv2,M *.  */
  if ((!FUNC3 (*t1) && !FUNC1 (*t1))
      || (!FUNC3 (*t2) && !FUNC1 (*t2)))
    {
      *t1 = FUNC5 (void_type_node,
				     FUNC6 (*t1));
      *t2 = FUNC5 (void_type_node,
				     FUNC6 (*t2));
      return;
    }

  quals1 = FUNC6 (*t1);
  quals2 = FUNC6 (*t2);

  if (FUNC1 (*t1))
    *t1 = FUNC2 (*t1);
  else
    *t1 = FUNC0 (*t1);
  if (FUNC1 (*t2))
    *t2 = FUNC2 (*t2);
  else
    *t2 = FUNC0 (*t2);

  FUNC7 (t1, t2);
  *t1 = FUNC4 (*t1);
  *t2 = FUNC4 (*t2);
  *t1 = FUNC5 (*t1, quals1);
  *t2 = FUNC5 (*t2, quals2);
}