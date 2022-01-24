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
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*,int) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 

struct type *
FUNC6 (struct type *type)
{
  int i;

  FUNC0 (type);

  if (type == NULL || FUNC1 (type) != TYPE_CODE_STRUCT)
    return NULL;

  for (i = 0; i < FUNC3 (type); i += 1)
    if (FUNC4 (type, i))
      return FUNC5 (FUNC2 (type, i));

  return NULL;
}