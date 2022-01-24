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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,int) ; 
 char* FUNC1 (int,int) ; 

__attribute__((used)) static char *
FUNC2 (unsigned char *ptr, int *idx, int size, int max)
{
  int oc = *idx / 8;
  char *r;
  int b = size;

  if (b >= max)
    return "*undefined*";

  if (b == 0)
    {
      /* Got to work out the length of the string from self.  */
      b = ptr[oc++];
      (*idx) += 8;
    }

  *idx += b * 8;
  r = FUNC1 (b + 1, 1);
  FUNC0 (r, ptr + oc, b);
  r[b] = 0;

  return r;
}