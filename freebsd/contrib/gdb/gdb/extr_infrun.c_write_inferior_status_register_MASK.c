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
struct inferior_status {int /*<<< orphan*/  registers; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 

void
FUNC4 (struct inferior_status *inf_status, int regno,
				LONGEST val)
{
  int size = FUNC0 (regno);
  void *buf = FUNC1 (size);
  FUNC3 (buf, size, val);
  FUNC2 (inf_status->registers, regno, buf);
}