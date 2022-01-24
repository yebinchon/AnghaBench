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
typedef  int /*<<< orphan*/  LONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,void*) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (struct type *type, void *buf)
{
  char *tmp = FUNC1 (FUNC0 (builtin_type_void_data_ptr));
  LONGEST val = FUNC4 (type, buf);
  FUNC3 (tmp, FUNC0 (builtin_type_void_data_ptr), val);
  return FUNC2 (tmp,
				 FUNC0 (builtin_type_void_data_ptr));
}