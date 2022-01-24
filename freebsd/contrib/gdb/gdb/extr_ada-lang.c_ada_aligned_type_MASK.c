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
 struct type* FUNC0 (struct type*,int /*<<< orphan*/ ) ; 
 struct type* FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 

struct type *
FUNC3 (struct type *type)
{
  if (FUNC2 (type))
    return FUNC3 (FUNC0 (type, 0));
  else
    return FUNC1 (type);
}