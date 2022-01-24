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
 int FUNC0 (int /*<<< orphan*/ ) ; 

bool
FUNC1 (tree type1, tree type2)
{
  int q1 = FUNC0 (type1);
  int q2 = FUNC0 (type2);

  /* All qualifiers for TYPE2 must also appear in TYPE1.  */
  return (q1 & q2) == q2;
}