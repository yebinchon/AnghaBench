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
struct type {int dummy; } ;

/* Variables and functions */
 struct type* FUNC0 (struct value*) ; 
 struct value* FUNC1 (struct value*,int /*<<< orphan*/ ,struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 

struct value *
FUNC4 (struct value *val)
{
  struct type *type =
    FUNC3 (FUNC2 (FUNC0 (val)));
  if (type == FUNC0 (val))
    return val;
  else
    return FUNC1 (val, 0, type);
}