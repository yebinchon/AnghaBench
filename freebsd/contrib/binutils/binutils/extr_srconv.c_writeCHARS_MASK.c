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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int,int) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *string, unsigned char *ptr, int *idx, int size, FILE *file)
{
  int i = *idx / 8;

  if (i > 240)
    {
      /* Lets write out that record and do another one.  */
      FUNC0 (file, ptr, *idx, code | 0x1000);
      *idx = 16;
      i = *idx / 8;
    }

  if (size == 0)
    {
      /* Variable length string.  */
      size = FUNC2 (string);
      ptr[i++] = size;
    }

  /* BUG WAITING TO HAPPEN.  */
  FUNC1 (ptr + i, string, size);
  i += size;
  *idx = i * 8;
}