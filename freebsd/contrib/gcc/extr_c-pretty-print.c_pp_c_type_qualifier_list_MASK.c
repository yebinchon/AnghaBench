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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int TYPE_QUAL_CONST ; 
 int TYPE_QUAL_RESTRICT ; 
 int TYPE_QUAL_VOLATILE ; 
 scalar_t__ flag_isoc99 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void
FUNC4 (c_pretty_printer *pp, tree t)
{
   int qualifiers;

  if (!FUNC1 (t))
    t = FUNC0 (t);

  qualifiers = FUNC2 (t);
  if (qualifiers & TYPE_QUAL_CONST)
    FUNC3 (pp, "const");
  if (qualifiers & TYPE_QUAL_VOLATILE)
    FUNC3 (pp, "volatile");
  if (qualifiers & TYPE_QUAL_RESTRICT)
    FUNC3 (pp, flag_isoc99 ? "restrict" : "__restrict__");
}