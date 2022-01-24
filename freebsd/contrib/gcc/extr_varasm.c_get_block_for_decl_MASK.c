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
struct object_block {int dummy; } ;
typedef  int /*<<< orphan*/  section ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SECTION_NOSWITCH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct object_block* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct object_block *
FUNC9 (tree decl)
{
  section *sect;

  if (FUNC4 (decl) == VAR_DECL)
    {
      /* The object must be defined in this translation unit.  */
      if (FUNC0 (decl))
	return NULL;

      /* There's no point using object blocks for something that is
	 isolated by definition.  */
      if (FUNC1 (decl))
	return NULL;
    }

  /* We can only calculate block offsets if the decl has a known
     constant size.  */
  if (FUNC2 (decl) == NULL)
    return NULL;
  if (!FUNC8 (FUNC2 (decl), 1))
    return NULL;

  /* Find out which section should contain DECL.  We cannot put it into
     an object block if it requires a standalone definition.  */
  if (FUNC4 (decl) == VAR_DECL)
      FUNC5 (decl, 0);
  sect = FUNC7 (decl, true);
  if (FUNC3 (sect) == SECTION_NOSWITCH)
    return NULL;

  return FUNC6 (sect);
}