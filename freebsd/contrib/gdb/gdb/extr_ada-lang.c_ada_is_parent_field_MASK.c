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
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 

int
FUNC3 (struct type *type, int field_num)
{
  const char *name = FUNC1 (FUNC2 (type), field_num);
  return (name != NULL &&
	  (FUNC0 (name, "PARENT", 6) || FUNC0 (name, "_parent", 7)));
}