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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct type*) ; 

int
FUNC5 (struct type *type)
{
  FUNC0 (type);
  return (FUNC2 (type) == TYPE_CODE_STRUCT
	  && FUNC4 (type) == 1
	  && FUNC1 (FUNC3 (type, 0), "F"));
}