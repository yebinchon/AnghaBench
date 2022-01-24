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
 int FUNC0 (struct type*,int) ; 

__attribute__((used)) static unsigned int
FUNC1 (struct type *type, int f)
{
  int n = FUNC0 (type, f);
  /* Kludge (temporary?) to fix problem with dwarf output. */
  if (n < 0)
    return (unsigned int) n & 0xffff;
  else
    return n;
}