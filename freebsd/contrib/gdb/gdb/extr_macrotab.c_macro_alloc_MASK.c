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
struct macro_table {scalar_t__ obstack; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__,int) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void *
FUNC2 (int size, struct macro_table *t)
{
  if (t->obstack)
    return FUNC0 (t->obstack, size);
  else
    return FUNC1 (size);
}