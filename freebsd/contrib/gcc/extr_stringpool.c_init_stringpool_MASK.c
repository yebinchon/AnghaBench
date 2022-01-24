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
struct TYPE_3__ {int /*<<< orphan*/  alloc_subobject; int /*<<< orphan*/  alloc_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  alloc_node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* ident_hash ; 
 int /*<<< orphan*/  string_stack ; 
 int /*<<< orphan*/  stringpool_ggc_alloc ; 

void
FUNC2 (void)
{
  /* Create with 16K (2^14) entries.  */
  ident_hash = FUNC1 (14);
  ident_hash->alloc_node = alloc_node;
  ident_hash->alloc_subobject = stringpool_ggc_alloc;
  FUNC0 (&string_stack);
}