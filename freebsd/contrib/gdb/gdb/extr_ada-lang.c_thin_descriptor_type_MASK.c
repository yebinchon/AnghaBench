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
 struct type* FUNC0 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct type *
FUNC4 (struct type *type)
{
  struct type *base_type = FUNC2 (type);
  if (base_type == NULL)
    return NULL;
  if (FUNC3 (FUNC1 (base_type), "___XVE"))
    return base_type;
  else
    {
      struct type *alt_type = FUNC0 (base_type, "___XVE");
      if (alt_type == NULL)
	return base_type;
      else
	return alt_type;
    }
}