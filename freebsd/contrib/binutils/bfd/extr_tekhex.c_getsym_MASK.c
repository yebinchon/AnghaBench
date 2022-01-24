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
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (char *dstp, char **srcp, unsigned int *lenp)
{
  char *src = *srcp;
  unsigned int i;
  unsigned int len;
  
  if (!FUNC0 (*src))
    return FALSE;

  len = FUNC1 (*src++);
  if (len == 0)
    len = 16;
  for (i = 0; i < len; i++)
    dstp[i] = src[i];
  dstp[i] = 0;
  *srcp = src + i;
  *lenp = len;
  return TRUE;
}