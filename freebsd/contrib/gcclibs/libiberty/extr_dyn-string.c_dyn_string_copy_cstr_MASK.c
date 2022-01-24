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
struct TYPE_4__ {int length; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*) ; 

int
FUNC3 (dyn_string_t dest, const char *src)
{
  int length = FUNC2 (src);
  /* Make room in DEST.  */
  if (FUNC0 (dest, length) == NULL)
    return 0;
  /* Copy DEST into SRC.  */
  FUNC1 (dest->s, src);
  /* Update the size of DEST.  */
  dest->length = length;
  return 1;
}