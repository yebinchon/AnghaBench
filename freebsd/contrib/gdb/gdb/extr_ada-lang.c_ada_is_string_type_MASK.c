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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*,int) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (struct type*) ; 

int
FUNC7 (struct type *type)
{
  FUNC0 (type);
  if (type != NULL
      && FUNC1 (type) != TYPE_CODE_PTR
      && (FUNC6 (type) || FUNC4 (type))
      && FUNC2 (type) == 1)
    {
      struct type *elttype = FUNC3 (type, 1);

      return FUNC5 (elttype);
    }
  else
    return 0;
}