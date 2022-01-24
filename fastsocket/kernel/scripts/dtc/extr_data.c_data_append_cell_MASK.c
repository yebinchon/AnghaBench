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
struct data {int dummy; } ;
typedef  int /*<<< orphan*/  cell_t ;
typedef  int /*<<< orphan*/  beword ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct data FUNC1 (struct data,int /*<<< orphan*/ *,int) ; 

struct data FUNC2(struct data d, cell_t word)
{
	cell_t beword = FUNC0(word);

	return FUNC1(d, &beword, sizeof(beword));
}