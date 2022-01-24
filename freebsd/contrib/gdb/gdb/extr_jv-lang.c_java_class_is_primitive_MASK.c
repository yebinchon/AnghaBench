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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (struct value*) ; 
 struct value* FUNC1 (struct value**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC2 (struct value *clas)
{
  struct value *vtable = FUNC1 (&clas, NULL, "vtable", NULL, "struct");
  CORE_ADDR i = FUNC0 (vtable);
  return (int) (i & 0x7fffffff) == (int) 0x7fffffff;
}