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
typedef  int /*<<< orphan*/  substitution_identifier_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ char_type_node ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline int
FUNC7 (const tree node,
			  const substitution_identifier_index_t index)
{
  tree args;
  /* Check NODE's name is ::std::identifier.  */
  if (!FUNC6 (node, index))
    return 0;
  /* Figure out its template args.  */
  if (FUNC2 (node))
    args = FUNC3 (node);
  else if (FUNC1 (node))
    args = FUNC0 (node);
  else
    /* Oops, not a template.  */
    return 0;
  /* NODE's template arg list should be <char>.  */
  return
    FUNC5 (args) == 1
    && FUNC4 (args, 0) == char_type_node;
}