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

__attribute__((used)) static int
FUNC2 (struct type *type)
{
  /* ??? A class with a base class certainly isn't POD, but does this
     catch all non-POD structure types?  */
  if (FUNC0 (type) == TYPE_CODE_STRUCT && FUNC1 (type) > 0)
    return 1;

  return 0;
}