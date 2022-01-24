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
struct frame_info {struct frame_extra_info* extra_info; } ;
struct frame_extra_info {int dummy; } ;

/* Variables and functions */
 struct frame_extra_info* FUNC0 (long) ; 

struct frame_extra_info *
FUNC1 (struct frame_info *fi, long size)
{
  fi->extra_info = FUNC0 (size);
  return fi->extra_info;
}