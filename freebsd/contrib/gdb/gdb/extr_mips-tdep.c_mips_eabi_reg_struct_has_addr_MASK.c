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
struct gdbarch_tdep {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TYPE_CODE_STRUCT ; 
 int TYPE_CODE_UNION ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gdbarch_tdep*) ; 

__attribute__((used)) static int
FUNC5 (int gcc_p, struct type *type)
{
  enum type_code typecode = FUNC0 (FUNC2 (type));
  int len = FUNC1 (FUNC2 (type));
  struct gdbarch_tdep *tdep = FUNC3 (current_gdbarch);

  if (typecode == TYPE_CODE_STRUCT || typecode == TYPE_CODE_UNION)
    return (len > FUNC4 (tdep));

  return 0;
}