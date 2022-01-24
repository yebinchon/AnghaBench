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
struct df {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct df*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void
FUNC2 (struct df *df, rtx insn, bool follow_chain, FILE *file)
{
  FUNC1 (df, FUNC0 (insn), follow_chain, file);
}