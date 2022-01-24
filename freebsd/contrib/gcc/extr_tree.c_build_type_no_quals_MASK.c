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
typedef  void* tree ;

/* Variables and functions */
#define  POINTER_TYPE 129 
#define  REFERENCE_TYPE 128 
 int FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC7 (tree t)
{
  switch (FUNC0 (t))
    {
    case POINTER_TYPE:
      return FUNC5 (FUNC7 (FUNC1 (t)),
					  FUNC3 (t),
					  FUNC4 (t));
    case REFERENCE_TYPE:
      return
	FUNC6 (FUNC7 (FUNC1 (t)),
				       FUNC3 (t),
				       FUNC4 (t));
    default:
      return FUNC2 (t);
    }
}