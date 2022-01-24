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
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ masterpid ; 
 scalar_t__ FUNC1 (int*) ; 

__attribute__((used)) static RETSIGTYPE
FUNC2(int signum)
{
  int result;

  if (FUNC1(&result) == masterpid) {
    FUNC0(4);
  }
}