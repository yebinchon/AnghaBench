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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC13 (const tree decl)
{
  tree template_info;

  FUNC4 ("nested-name", decl);

  FUNC8 ('N');

  /* Write CV-qualifiers, if this is a member function.  */
  if (FUNC6 (decl) == FUNCTION_DECL
      && FUNC2 (decl))
    {
      if (FUNC3 (decl))
	FUNC8 ('V');
      if (FUNC0 (decl))
	FUNC8 ('K');
    }

  /* Is this a template instance?  */
  if (FUNC7 (decl, &template_info))
    {
      /* Yes, use <template-prefix>.  */
      FUNC11 (decl);
      FUNC10 (FUNC5 (template_info));
    }
  else
    {
      /* No, just use <prefix>  */
      FUNC9 (FUNC1 (decl));
      FUNC12 (decl);
    }
  FUNC8 ('E');
}