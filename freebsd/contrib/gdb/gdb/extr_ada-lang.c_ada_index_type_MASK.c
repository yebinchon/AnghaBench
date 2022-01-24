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
 struct type* FUNC0 (struct type*,int /*<<< orphan*/ ) ; 
 struct type* FUNC1 (struct type*) ; 
 int FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 
 struct type* FUNC6 (int /*<<< orphan*/ ,int) ; 

struct type *
FUNC7 (struct type *type, int n)
{
  type = FUNC4 (type);

  if (n > FUNC2 (type))
    return NULL;

  if (FUNC3 (type))
    {
      int i;

      for (i = 1; i < n; i += 1)
	type = FUNC1 (type);

      return FUNC1 (FUNC0 (type, 0));
    }
  else
    return FUNC6 (FUNC5 (type), n);
}