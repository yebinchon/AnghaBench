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
struct TYPE_4__ {int t_id; int /*<<< orphan*/  t_type; } ;
typedef  TYPE_1__ tdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  TYPEDEF_UNRES ; 
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static tdesc_t *
FUNC1(int tid)
{
	tdesc_t *tdp;

	tdp = FUNC0(sizeof (*tdp));
	tdp->t_type = TYPEDEF_UNRES;
	tdp->t_id = tid;

	return (tdp);
}