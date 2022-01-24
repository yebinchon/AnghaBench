#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* t_intr; int /*<<< orphan*/  t_size; int /*<<< orphan*/  t_type; scalar_t__ t_id; int /*<<< orphan*/  t_name; } ;
typedef  TYPE_1__ tdesc_t ;
typedef  int /*<<< orphan*/  intr_t ;
struct TYPE_9__ {int intr_nbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTRINSIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  faketypenumber ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tdesc_t *
FUNC4(tdesc_t *template, int nbits)
{
	tdesc_t *newtdp = FUNC1(sizeof (tdesc_t));

	newtdp->t_name = FUNC3(template->t_name);
	newtdp->t_id = faketypenumber++;
	newtdp->t_type = INTRINSIC;
	newtdp->t_size = template->t_size;
	newtdp->t_intr = FUNC2(sizeof (intr_t));
	FUNC0(template->t_intr, newtdp->t_intr, sizeof (intr_t));
	newtdp->t_intr->intr_nbits = nbits;

	return (newtdp);
}