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
struct c_arg_info {int dummy; } ;

/* Variables and functions */
 struct c_arg_info* current_function_arg_info ; 
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1 (struct c_arg_info *arg_info)
{
  current_function_arg_info = arg_info;
  FUNC0 ();
}