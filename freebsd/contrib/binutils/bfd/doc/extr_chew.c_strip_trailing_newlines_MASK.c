#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ write_idx; } ;

/* Variables and functions */
 char FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  pc ; 
 TYPE_1__* tos ; 

__attribute__((used)) static void
FUNC2 ()
{
  while ((FUNC1 ((unsigned char) FUNC0 (tos, tos->write_idx - 1))
	  || FUNC0 (tos, tos->write_idx - 1) == '\n')
	 && tos->write_idx > 0)
    tos->write_idx--;
  pc++;
}