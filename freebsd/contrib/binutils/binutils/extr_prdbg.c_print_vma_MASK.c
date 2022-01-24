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
typedef  int /*<<< orphan*/  vma ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2 (bfd_vma vma, char *buf, bfd_boolean unsignedp, bfd_boolean hexp)
{
  if (sizeof (vma) <= sizeof (unsigned long))
    {
      if (hexp)
	FUNC0 (buf, "0x%lx", (unsigned long) vma);
      else if (unsignedp)
	FUNC0 (buf, "%lu", (unsigned long) vma);
      else
	FUNC0 (buf, "%ld", (long) vma);
    }
  else
    {
      buf[0] = '0';
      buf[1] = 'x';
      FUNC1 (buf + 2, vma);
    }
}