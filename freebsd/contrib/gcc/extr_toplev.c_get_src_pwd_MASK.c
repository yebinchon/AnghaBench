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
 char* FUNC0 () ; 
 char const* src_pwd ; 

const char *
FUNC1 (void)
{
  if (! src_pwd)
    {
      src_pwd = FUNC0 ();
      if (!src_pwd)
	src_pwd = ".";
    }

   return src_pwd;
}