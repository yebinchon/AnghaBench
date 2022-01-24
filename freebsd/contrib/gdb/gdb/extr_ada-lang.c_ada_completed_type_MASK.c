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
 scalar_t__ TYPE_CODE_ENUM ; 
 int FUNC2 (struct type*) ; 
 int TYPE_FLAG_STUB ; 
 char* FUNC3 (struct type*) ; 
 struct type* FUNC4 (char*) ; 

struct type *
FUNC5 (struct type *type)
{
  FUNC0 (type);
  if (type == NULL || FUNC1 (type) != TYPE_CODE_ENUM
      || (FUNC2 (type) & TYPE_FLAG_STUB) == 0
      || FUNC3 (type) == NULL)
    return type;
  else
    {
      char *name = FUNC3 (type);
      struct type *type1 = FUNC4 (name);
      return (type1 == NULL) ? type : type1;
    }
}