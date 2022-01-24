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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const) ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static void
FUNC8 (const tree function, const tree local_entity,
		  const tree entity)
{
  FUNC0 ("local-name", entity);

  FUNC4 ('Z');
  FUNC6 (function);
  FUNC4 ('E');
  if (FUNC1 (entity) == STRING_CST)
    {
      FUNC4 ('s');
      FUNC5 (FUNC3 (function,
							     entity));
    }
  else
    {
      /* Now the <entity name>.  Let write_name know its being called
	 from <local-name>, so it doesn't try to process the enclosing
	 function scope again.  */
      FUNC7 (entity, /*ignore_local_scope=*/1);
      FUNC5 (FUNC2 (local_entity));
    }
}