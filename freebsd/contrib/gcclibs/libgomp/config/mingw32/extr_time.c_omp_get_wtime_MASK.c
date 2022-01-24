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
struct _timeb {double time; scalar_t__ millitm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _timeb*) ; 

double
FUNC1 (void)
{
  struct _timeb timebuf;
  FUNC0 (&timebuf);
  return (timebuf.time + (long)(timebuf.millitm) / 1e3);
}