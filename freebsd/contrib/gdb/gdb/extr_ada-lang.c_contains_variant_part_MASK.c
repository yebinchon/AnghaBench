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
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ FUNC1 (struct type*) ; 
 int FUNC2 (struct type*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3 (struct type *type)
{
  int f;

  if (type == NULL || FUNC0 (type) != TYPE_CODE_STRUCT
      || FUNC1 (type) <= 0)
    return 0;
  return FUNC2 (type, FUNC1 (type) - 1);
}