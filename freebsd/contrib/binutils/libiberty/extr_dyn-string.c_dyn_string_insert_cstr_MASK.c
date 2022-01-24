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
struct TYPE_4__ {int length; int /*<<< orphan*/ * s; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 

int
FUNC3 (dyn_string_t dest, int pos, const char *src)
{
  int i;
  int length = FUNC1 (src);

  if (FUNC0 (dest, dest->length + length) == NULL)
    return 0;
  /* Make room for the insertion.  Be sure to copy the NUL.  */
  for (i = dest->length; i >= pos; --i)
    dest->s[i + length] = dest->s[i];
  /* Splice in the new stuff.  */
  FUNC2 (dest->s + pos, src, length);
  /* Compute the new length.  */
  dest->length += length;
  return 1;
}