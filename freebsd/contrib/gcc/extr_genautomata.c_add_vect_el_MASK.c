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
typedef  int /*<<< orphan*/  vla_hwint_t ;
typedef  TYPE_1__* ainsn_t ;
struct TYPE_4__ {int insn_equiv_class_num; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  undefined_vect_el_value ; 
 int /*<<< orphan*/  vect_el_t ; 

__attribute__((used)) static void
FUNC4 (vla_hwint_t *vect, ainsn_t ainsn, int el_value)
{
  int equiv_class_num;
  int vect_index;

  FUNC3 (ainsn);
  equiv_class_num = ainsn->insn_equiv_class_num;
  for (vect_index = FUNC0 (vect_el_t, *vect);
       vect_index <= equiv_class_num;
       vect_index++)
    FUNC2 (vect_el_t,heap, *vect, undefined_vect_el_value);
  FUNC1 (vect_el_t, *vect, equiv_class_num, el_value);
}