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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 char* FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4 (struct type *templ_type, int field_num)
{
  const char *name = FUNC1 (templ_type, field_num);
  return name != NULL
    && FUNC0 (FUNC2 (templ_type, field_num)) == TYPE_CODE_PTR
    && FUNC3 (name, "___XVL") != NULL;
}