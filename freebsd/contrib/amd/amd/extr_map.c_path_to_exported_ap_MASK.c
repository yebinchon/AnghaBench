#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  am_path; } ;
typedef  TYPE_1__ am_node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int*) ; 
 TYPE_1__* FUNC2 (int*) ; 

am_node *
FUNC3(char *path)
{
  int index;
  am_node *mp;

  mp = FUNC1(&index);
  while (mp != NULL) {
    if (FUNC0(mp->am_path, path))
      break;
    mp = FUNC2(&index);
  }
  return mp;
}