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
typedef  int /*<<< orphan*/  state_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pos_1 ; 
 int /*<<< orphan*/  pos_2 ; 
 int /*<<< orphan*/  pos_3 ; 
 int /*<<< orphan*/  pos_4 ; 
 int /*<<< orphan*/  pos_5 ; 
 int /*<<< orphan*/  pos_6 ; 

__attribute__((used)) static int
FUNC1 (state_t state)
{
  if (FUNC0 (state, pos_6))
    return 6;
  else if (FUNC0 (state, pos_5))
    return 5;
  else if (FUNC0 (state, pos_4))
    return 4;
  else if (FUNC0 (state, pos_3))
    return 3;
  else if (FUNC0 (state, pos_2))
    return 2;
  else if (FUNC0 (state, pos_1))
    return 1;
  else
    return 0;
}