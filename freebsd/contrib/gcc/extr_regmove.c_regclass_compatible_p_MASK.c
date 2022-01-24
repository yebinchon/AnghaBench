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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 

__attribute__((used)) static int
FUNC2 (int class0, int class1)
{
  return (class0 == class1
	  || (FUNC1 (class0, class1)
	      && ! FUNC0 (class0))
	  || (FUNC1 (class1, class0)
	      && ! FUNC0 (class1)));
}