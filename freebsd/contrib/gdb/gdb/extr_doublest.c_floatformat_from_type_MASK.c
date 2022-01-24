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
struct floatformat {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type const*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 struct floatformat const* FUNC1 (struct type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct type const*) ; 
 struct floatformat const* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

const struct floatformat *
FUNC5 (const struct type *type)
{
  FUNC4 (FUNC0 (type) == TYPE_CODE_FLT);
  if (FUNC1 (type) != NULL)
    return FUNC1 (type);
  else
    return FUNC3 (FUNC2 (type));
}