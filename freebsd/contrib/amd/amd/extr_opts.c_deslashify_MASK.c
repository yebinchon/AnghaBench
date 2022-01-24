#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CFM_NORMALIZE_SLASHES ; 
 TYPE_1__ gopt ; 
 int FUNC0 (char*) ; 

void
FUNC1(char *s)
{
  if (!(gopt.flags & CFM_NORMALIZE_SLASHES))
    return;

  if (s && *s) {
    char *sl = s + FUNC0(s);

    while (*--sl == '/' && sl > s)
      *sl = '\0';
  }
}