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
struct inf {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*) ; 
 int /*<<< orphan*/  FUNC2 (struct inf*,int) ; 

void
FUNC3 (struct inf *inf, int pid)
{
  FUNC0 (inf, "attaching: %d", pid);

  if (inf->pid)
    FUNC1 (inf);

  FUNC2 (inf, pid);
}