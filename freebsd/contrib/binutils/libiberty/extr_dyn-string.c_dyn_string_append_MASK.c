#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* dyn_string_t ;
struct TYPE_5__ {scalar_t__ length; scalar_t__ s; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

int
FUNC2 (dyn_string_t dest, dyn_string_t s)
{
  if (FUNC0 (dest, dest->length + s->length) == 0)
    return 0;
  FUNC1 (dest->s + dest->length, s->s);
  dest->length += s->length;
  return 1;
}