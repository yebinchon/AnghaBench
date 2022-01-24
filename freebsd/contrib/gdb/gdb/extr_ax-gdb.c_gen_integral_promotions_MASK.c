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
struct axs_value {void* type; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 void* builtin_type_int ; 
 void* builtin_type_unsigned_int ; 
 int /*<<< orphan*/  FUNC0 (struct agent_expr*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 

__attribute__((used)) static void
FUNC2 (struct agent_expr *ax, struct axs_value *value)
{
  if (!FUNC1 (value->type, builtin_type_int))
    {
      FUNC0 (ax, value->type, builtin_type_int);
      value->type = builtin_type_int;
    }
  else if (!FUNC1 (value->type, builtin_type_unsigned_int))
    {
      FUNC0 (ax, value->type, builtin_type_unsigned_int);
      value->type = builtin_type_unsigned_int;
    }
}