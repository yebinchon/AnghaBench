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
 scalar_t__ TYPE_CODE_PTR ; 
 struct value* FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct value*,int,int) ; 
 struct value* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct type* FUNC8 (struct type*) ; 
 int /*<<< orphan*/  FUNC9 (struct type*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct type*,int,int) ; 
 struct type* FUNC11 (struct type*) ; 
 int /*<<< orphan*/  FUNC12 (struct type*) ; 
 int /*<<< orphan*/  FUNC13 (struct type*) ; 
 int /*<<< orphan*/  FUNC14 (struct type*) ; 
 int /*<<< orphan*/  FUNC15 (struct type*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC17 (struct value*,int /*<<< orphan*/ *) ; 
 struct value* FUNC18 (struct value*) ; 
 struct value* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC20 (struct type *type, struct value *arr, CORE_ADDR *sp)
{
  struct type *bounds_type = FUNC11 (type);
  struct type *desc_type = FUNC8 (type);
  struct value *descriptor = FUNC6 (desc_type);
  struct value *bounds = FUNC6 (bounds_type);
  CORE_ADDR bounds_addr;
  int i;

  for (i = FUNC4 (FUNC7 (FUNC3 (arr))); i > 0; i -= 1)
    {
      FUNC16 (FUNC2 (bounds),
			    FUNC19 (FUNC5 (arr, i, 0)),
			    FUNC9 (bounds_type, i, 0),
			    FUNC10 (bounds_type, i, 0));
      FUNC16 (FUNC2 (bounds),
			    FUNC19 (FUNC5 (arr, i, 1)),
			    FUNC9 (bounds_type, i, 1),
			    FUNC10 (bounds_type, i, 1));
    }

  bounds = FUNC17 (bounds, sp);

  FUNC16 (FUNC2 (descriptor),
			arr,
			FUNC14 (desc_type),
			FUNC15 (desc_type));
  FUNC16 (FUNC2 (descriptor),
			FUNC1 (bounds),
			FUNC12 (desc_type),
			FUNC13 (desc_type));

  descriptor = FUNC17 (descriptor, sp);

  if (FUNC0 (type) == TYPE_CODE_PTR)
    return FUNC18 (descriptor);
  else
    return descriptor;
}