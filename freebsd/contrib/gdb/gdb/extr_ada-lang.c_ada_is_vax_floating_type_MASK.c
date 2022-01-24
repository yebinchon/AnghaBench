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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_RANGE ; 
 int /*<<< orphan*/ * FUNC2 (struct type*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4 (struct type *type)
{
  int name_len =
    (FUNC2 (type) == NULL) ? 0 : FUNC3 (FUNC2 (type));
  return
    name_len > 6
    && (FUNC1 (type) == TYPE_CODE_INT
	|| FUNC1 (type) == TYPE_CODE_RANGE)
    && FUNC0 (FUNC2 (type) + name_len - 6, "___XF", 5);
}