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
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  target_char_to_host_baton ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 

int
FUNC2 (int target_char, int *host_char)
{
  return (FUNC1)
          (target_char_to_host_baton, target_char, host_char));
}