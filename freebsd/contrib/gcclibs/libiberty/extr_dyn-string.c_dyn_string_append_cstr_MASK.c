#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dyn_string_t ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*) ; 
 int FUNC2 (char const*) ; 

int
FUNC3 (dyn_string_t dest, const char *s)
{
  int len = FUNC2 (s);

  /* The new length is the old length plus the size of our string, plus
     one for the null at the end.  */
  if (FUNC0 (dest, dest->length + len) == NULL)
    return 0;
  FUNC1 (dest->s + dest->length, s);
  dest->length += len;
  return 1;
}