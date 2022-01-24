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
struct inferior_status {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  do_restore_inferior_status_cleanup ; 
 struct cleanup* FUNC0 (int /*<<< orphan*/ ,struct inferior_status*) ; 

struct cleanup *
FUNC1 (struct inferior_status *inf_status)
{
  return FUNC0 (do_restore_inferior_status_cleanup, inf_status);
}