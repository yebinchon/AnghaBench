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
struct re_pattern_buffer {int dummy; } ;

/* Variables and functions */
 int MB_CUR_MAX ; 
 int FUNC0 (struct re_pattern_buffer*) ; 
 int FUNC1 (struct re_pattern_buffer*) ; 

int
FUNC2 (struct re_pattern_buffer *bufp)
{
# ifdef MBS_SUPPORT
  if (MB_CUR_MAX != 1)
    return wcs_re_compile_fastmap(bufp);
  else
# endif
    return FUNC0(bufp);
}