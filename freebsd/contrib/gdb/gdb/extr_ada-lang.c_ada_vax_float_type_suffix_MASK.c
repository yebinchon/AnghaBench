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
struct type {int dummy; } ;

/* Variables and functions */
 int* FUNC0 (struct type*) ; 
 int FUNC1 (int*) ; 

int
FUNC2 (struct type *type)
{
  return FUNC0 (type)[FUNC1 (FUNC0 (type)) - 1];
}