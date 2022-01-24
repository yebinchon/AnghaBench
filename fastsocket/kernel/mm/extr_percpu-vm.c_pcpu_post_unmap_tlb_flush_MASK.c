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
struct pcpu_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcpu_chunk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcpu_high_unit_cpu ; 
 int /*<<< orphan*/  pcpu_low_unit_cpu ; 

__attribute__((used)) static void FUNC2(struct pcpu_chunk *chunk,
				      int page_start, int page_end)
{
	FUNC0(
		FUNC1(chunk, pcpu_low_unit_cpu, page_start),
		FUNC1(chunk, pcpu_high_unit_cpu, page_end));
}