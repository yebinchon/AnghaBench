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
typedef  int /*<<< orphan*/  etree_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * overlay_max ; 
 int /*<<< orphan*/ * overlay_subalign ; 
 int /*<<< orphan*/ * overlay_vma ; 

void
FUNC1 (etree_type *vma_expr, etree_type *subalign)
{
  /* The grammar should prevent nested overlays from occurring.  */
  FUNC0 (overlay_vma == NULL
	  && overlay_subalign == NULL
	  && overlay_max == NULL);

  overlay_vma = vma_expr;
  overlay_subalign = subalign;
}