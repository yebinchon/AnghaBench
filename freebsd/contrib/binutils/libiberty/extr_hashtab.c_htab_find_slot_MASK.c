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
typedef  TYPE_1__* htab_t ;
typedef  enum insert_option { ____Placeholder_insert_option } insert_option ;
struct TYPE_4__ {int /*<<< orphan*/  (* hash_f ) (int /*<<< orphan*/  const) ;} ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 

PTR *
FUNC2 (htab_t htab, const PTR element, enum insert_option insert)
{
  return FUNC0 (htab, element, (*htab->hash_f) (element),
				   insert);
}