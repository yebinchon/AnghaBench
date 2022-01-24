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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ empty_except_spec ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,void*) ; 
 scalar_t__ FUNC12 (scalar_t__,void*) ; 

__attribute__((used)) static tree
FUNC13 (tree type, tree (*extractor) (tree, void*),
			   void *client)
{
  tree raises = empty_except_spec;
  tree fields = FUNC8 (type);
  tree binfo, base_binfo;
  int i;

  for (binfo = FUNC7 (type), i = 0;
       FUNC0 (binfo, i, base_binfo); i++)
    {
      tree fn = (*extractor) (FUNC1 (base_binfo), client);
      if (fn)
	{
	  tree fn_raises = FUNC9 (FUNC6 (fn));

	  raises = FUNC10 (raises, fn_raises);
	}
    }
  for (; fields; fields = FUNC4 (fields))
    {
      tree type = FUNC6 (fields);
      tree fn;

      if (FUNC5 (fields) != FIELD_DECL || FUNC3 (fields))
	continue;
      while (FUNC5 (type) == ARRAY_TYPE)
	type = FUNC6 (type);
      if (!FUNC2 (type))
	continue;

      fn = (*extractor) (type, client);
      if (fn)
	{
	  tree fn_raises = FUNC9 (FUNC6 (fn));

	  raises = FUNC10 (raises, fn_raises);
	}
    }
  return raises;
}