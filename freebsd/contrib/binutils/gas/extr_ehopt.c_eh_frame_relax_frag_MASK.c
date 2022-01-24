#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fr_subtype; } ;
typedef  TYPE_1__ fragS ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 

int
FUNC1 (fragS *frag)
{
  int oldsize, newsize;

  oldsize = frag->fr_subtype & 7;
  newsize = FUNC0 (frag);
  return newsize - oldsize;
}