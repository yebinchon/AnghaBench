#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {int /*<<< orphan*/  mangled_name; } ;
typedef  TYPE_1__ operator_name_info_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const) ; 
 size_t FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/  const) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const) ; 
 TYPE_1__* assignment_operator_name_info ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const) ; 
 scalar_t__ lk_internal ; 
 TYPE_1__* operator_name_info ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25 (const tree decl)
{
  FUNC10 ("unqualified-name", decl);

  if (FUNC6 (decl) != NULL && FUNC2 (decl))
    FUNC22 (decl);
  else if (FUNC6 (decl) != NULL && FUNC5 (decl))
    FUNC23 (decl);
  else if (FUNC7 (decl) == NULL_TREE)
    FUNC21 (FUNC0 (decl));
  else if (FUNC3 (decl))
    {
      /* Conversion operator. Handle it right here.
	   <operator> ::= cv <type>  */
      tree type;
      if (FUNC14 (decl, NULL))
	{
	  tree fn_type;
	  FUNC18 ();
	  fn_type = FUNC16 (decl);
	  FUNC17 ();
	  type = FUNC12 (fn_type);
	}
      else
	type = FUNC4 (decl);
      FUNC20 (type);
    }
  else if (FUNC9 (decl))
    {
      operator_name_info_t *oni;
      if (FUNC1 (decl))
	oni = assignment_operator_name_info;
      else
	oni = operator_name_info;

      FUNC24 (oni[FUNC9 (decl)].mangled_name);
    }
  else if (FUNC13 (decl) && ! FUNC11 (decl)
	   && FUNC8 (decl)
	   && FUNC15 (decl) == lk_internal)
    {
      FUNC10 ("local-source-name", decl);
      FUNC19 ('L');
      FUNC21 (FUNC7 (decl));
      /* The default discriminator is 1, and that's all we ever use,
	 so there's no code to output one here.  */
    }
  else
    FUNC21 (FUNC7 (decl));
}