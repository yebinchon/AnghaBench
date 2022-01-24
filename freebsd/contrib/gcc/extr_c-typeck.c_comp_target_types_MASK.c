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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (tree ttl, tree ttr)
{
  int val;
  tree mvl, mvr;

  /* APPLE LOCAL begin blocks 6065211 */
  if (FUNC0 (ttl) == BLOCK_POINTER_TYPE
      && FUNC0 (ttr) == BLOCK_POINTER_TYPE)
    return FUNC5 (FUNC1 (ttl),
		       FUNC1 (ttr));
  if (FUNC0 (ttl) != FUNC0 (ttr))
    return 0;
  /* APPLE LOCAL end blocks 6065211 */

  /* Do not lose qualifiers on element types of array types that are
     pointer targets by taking their TYPE_MAIN_VARIANT.  */
  mvl = FUNC1 (ttl);
  mvr = FUNC1 (ttr);
  if (FUNC0 (mvl) != ARRAY_TYPE)
    mvl = FUNC2 (mvl);
  if (FUNC0 (mvr) != ARRAY_TYPE)
    mvr = FUNC2 (mvr);
  val = FUNC3 (mvl, mvr);

  if (val == 2 && pedantic)
    FUNC4 ("types are not quite compatible");
  return val;
}