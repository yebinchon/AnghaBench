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
#define  ARRAY_TYPE 130 
#define  COMPLEX_TYPE 129 
 int FIELD_DECL ; 
#define  RECORD_TYPE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sra_type_inst_cache ; 

__attribute__((used)) static bool
FUNC11 (tree type)
{
  if (FUNC9 (type))
    return true;
  if (!FUNC10 (type))
    return false;

  switch (FUNC1 (type))
    {
    case RECORD_TYPE:
      {
	unsigned int cache = FUNC5 (FUNC4 (type)) * 2;
	tree f;

	if (FUNC6 (sra_type_inst_cache, cache+0))
	  return true;
	if (FUNC6 (sra_type_inst_cache, cache+1))
	  return false;

	for (f = FUNC3 (type); f ; f = FUNC0 (f))
	  if (FUNC1 (f) == FIELD_DECL)
	    {
	      if (!FUNC11 (FUNC2 (f)))
		{
		  FUNC7 (sra_type_inst_cache, cache+1);
		  return false;
		}
	    }

	FUNC7 (sra_type_inst_cache, cache+0);
	return true;
      }

    case ARRAY_TYPE:
      return FUNC11 (FUNC2 (type));

    case COMPLEX_TYPE:
      return true;

    default:
      FUNC8 ();
    }
}