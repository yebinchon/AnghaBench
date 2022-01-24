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
 int /*<<< orphan*/  TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct type*,char*,struct type*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* FUNC1 (int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct type* FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct type *
FUNC4 (char *name,
		struct type *elt_type,
		char *elt_name,
		int n)
{
  struct type *simd_type;
  struct type *array_type;
  
  simd_type = FUNC3 (name, TYPE_CODE_STRUCT);
  array_type = FUNC1 (0, elt_type,
				  FUNC2 (0, builtin_type_int,
						     0, n-1));
  FUNC0 (simd_type, elt_name, array_type);
  return simd_type;
}