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
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_PTR ; 
 struct type* FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 

int
FUNC6 (struct type *type)
{
  struct type *data_type = FUNC5 (type);

  if (type == NULL)
    return 0;
  FUNC0 (type);
  return
    data_type != NULL
    && ((FUNC1 (data_type) == TYPE_CODE_PTR
	 && FUNC2 (data_type) != NULL
	 && FUNC1 (FUNC2 (data_type)) == TYPE_CODE_ARRAY)
	||
	FUNC1 (data_type) == TYPE_CODE_ARRAY)
    && FUNC3 (FUNC4 (type)) > 0;
}