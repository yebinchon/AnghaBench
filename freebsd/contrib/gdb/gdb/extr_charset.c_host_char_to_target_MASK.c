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
 int /*<<< orphan*/  host_char_to_target_baton ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 

int
FUNC2 (int host_char, int *target_char)
{
  return (FUNC0)
          (host_char_to_target_baton, host_char, target_char));
}