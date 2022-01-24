#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {int need_abi_warning; } ;

/* Variables and functions */
 TYPE_1__ G ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const) ; 
 scalar_t__ FUNC3 (scalar_t__ const) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size_one_node ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (const tree type)
{
  FUNC9 ('A');
  if (FUNC3 (type))
    {
      tree index_type;
      tree max;

      index_type = FUNC3 (type);
      /* The INDEX_TYPE gives the upper and lower bounds of the
	 array.  */
      max = FUNC4 (index_type);
      if (FUNC0 (max) == INTEGER_CST)
	{
	  /* The ABI specifies that we should mangle the number of
	     elements in the array, not the largest allowed index.  */
	  max = FUNC6 (PLUS_EXPR, max, size_one_node);
	  FUNC12 (FUNC7 (max, 1));
	}
      else
	{
	  max = FUNC1 (max, 0);
	  if (!FUNC5 (2))
	    {
	      /* value_dependent_expression_p presumes nothing is
		 dependent when PROCESSING_TEMPLATE_DECL is zero.  */
	      ++processing_template_decl;
	      if (!FUNC8 (max))
		G.need_abi_warning = 1;
	      --processing_template_decl;
	    }
	  FUNC10 (max);
	}

    }
  FUNC9 ('_');
  FUNC11 (FUNC2 (type));
}