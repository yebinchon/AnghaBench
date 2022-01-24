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
union parameter_info {int /*<<< orphan*/  value; } ;
typedef  enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC3 (union parameter_info *const_val1,
			 union parameter_info *const_val2,
			 enum cvalue_type type1, enum cvalue_type type2)
{
  FUNC0 (FUNC1 (type1) && FUNC1 (type2));
  if (type1 != type2)
    return false;

  if (FUNC2 (const_val1->value, const_val2->value, 0))
    return true;

  return false;
}