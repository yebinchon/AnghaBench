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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  PROCESSOR_HYPERSPARC 130 
#define  PROCESSOR_SPARCLITE86X 129 
#define  PROCESSOR_SUPERSPARC 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int sparc_cpu ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(rtx insn, rtx link, rtx dep, int cost)
{
  switch (sparc_cpu)
    {
    case PROCESSOR_SUPERSPARC:
      cost = FUNC1 (insn, link, dep, cost);
      break;
    case PROCESSOR_HYPERSPARC:
    case PROCESSOR_SPARCLITE86X:
      cost = FUNC0 (insn, link, dep, cost);
      break;
    default:
      break;
    }
  return cost;
}