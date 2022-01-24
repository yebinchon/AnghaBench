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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 struct value* FUNC1 (struct value*,int /*<<< orphan*/ ,struct type*) ; 
 struct type* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct value *
FUNC4 (struct value *arr)
{
  struct type *type = FUNC2 (FUNC0 (arr));

  if (type == NULL)
    {
      FUNC3 ("can't unpack array");
      return NULL;
    }
  else
    return FUNC1 (arr, 0, type);
}