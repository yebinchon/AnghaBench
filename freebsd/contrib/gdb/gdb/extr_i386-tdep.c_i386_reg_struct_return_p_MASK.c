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
struct gdbarch_tdep {scalar_t__ struct_return; } ;
struct gdbarch {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_STRUCT ; 
 int TYPE_CODE_UNION ; 
 int FUNC1 (struct type*) ; 
 scalar_t__ default_struct_convention ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct gdbarch_tdep* FUNC3 (struct gdbarch*) ; 
 scalar_t__ pcc_struct_convention ; 
 scalar_t__ pcc_struct_return ; 
 scalar_t__ struct_convention ; 

__attribute__((used)) static int
FUNC4 (struct gdbarch *gdbarch, struct type *type)
{
  struct gdbarch_tdep *tdep = FUNC3 (gdbarch);
  enum type_code code = FUNC0 (type);
  int len = FUNC1 (type);

  FUNC2 (code == TYPE_CODE_STRUCT || code == TYPE_CODE_UNION);

  if (struct_convention == pcc_struct_convention
      || (struct_convention == default_struct_convention
	  && tdep->struct_return == pcc_struct_return))
    return 0;

  return (len == 1 || len == 2 || len == 4 || len == 8);
}