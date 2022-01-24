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
  int old_size, new_size;

  old_size = frag->fr_subtype;
  new_size = FUNC0 (frag);

  return new_size - old_size;
}