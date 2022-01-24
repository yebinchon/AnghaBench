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
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct type *
FUNC4 (struct type *type)
{
  if (type == NULL)
    return NULL;
  FUNC0 (type);
  if (type != NULL && FUNC1 (type) == TYPE_CODE_PTR)
    return FUNC3 (FUNC2 (type));
  else
    return type;
}