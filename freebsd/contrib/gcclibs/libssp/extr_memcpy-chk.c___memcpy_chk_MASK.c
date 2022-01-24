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
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (void*,void const*,size_t) ; 

void *
FUNC2 (void *__restrict__ dest, const void *__restrict__ src,
              size_t len, size_t slen)
{
  if (len > slen)
    FUNC0 ();
  return FUNC1 (dest, src, len);
}