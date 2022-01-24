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
struct value {int dummy; } ;
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_double ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct value* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC4 (struct value *arg)
{
  DOUBLEST val = FUNC1 (FUNC0 (arg),
				     FUNC2 (arg));
  return FUNC3 (builtin_type_double, val);
}