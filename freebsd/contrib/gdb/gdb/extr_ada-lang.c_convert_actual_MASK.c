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
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 scalar_t__ FUNC4 (struct value*) ; 
 scalar_t__ FUNC5 (struct value*) ; 
 struct type* FUNC6 (struct value*) ; 
 scalar_t__ FUNC7 (struct type*) ; 
 struct value* FUNC8 (struct value*) ; 
 struct value* FUNC9 (struct type*) ; 
 struct type* FUNC10 (struct type*) ; 
 struct value* FUNC11 (struct value*) ; 
 scalar_t__ lval_memory ; 
 struct value* FUNC12 (struct type*,struct value*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ) ; 
 struct value* FUNC14 (struct value*,int /*<<< orphan*/ *) ; 
 struct value* FUNC15 (struct value*) ; 

__attribute__((used)) static struct value *
FUNC16 (struct value *actual, struct type *formal_type0,
		CORE_ADDR *sp)
{
  struct type *actual_type = FUNC10 (FUNC6 (actual));
  struct type *formal_type = FUNC10 (formal_type0);
  struct type *formal_target =
    FUNC0 (formal_type) == TYPE_CODE_PTR
    ? FUNC10 (FUNC2 (formal_type)) : formal_type;
  struct type *actual_target =
    FUNC0 (actual_type) == TYPE_CODE_PTR
    ? FUNC10 (FUNC2 (actual_type)) : actual_type;

  if (FUNC7 (formal_target)
      && FUNC0 (actual_target) == TYPE_CODE_ARRAY)
    return FUNC12 (formal_type, actual, sp);
  else if (FUNC0 (formal_type) == TYPE_CODE_PTR)
    {
      if (FUNC0 (formal_target) == TYPE_CODE_ARRAY
	  && FUNC7 (actual_target))
	return FUNC11 (actual);
      else if (FUNC0 (actual_type) != TYPE_CODE_PTR)
	{
	  if (FUNC5 (actual) != lval_memory)
	    {
	      struct value *val;
	      actual_type = FUNC10 (FUNC6 (actual));
	      val = FUNC9 (actual_type);
	      FUNC13 ((char *) FUNC4 (val),
		      (char *) FUNC3 (actual),
		      FUNC1 (actual_type));
	      actual = FUNC14 (val, sp);
	    }
	  return FUNC15 (actual);
	}
    }
  else if (FUNC0 (actual_type) == TYPE_CODE_PTR)
    return FUNC8 (actual);

  return actual;
}