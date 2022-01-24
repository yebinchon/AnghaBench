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
struct ggc_root_tab {size_t stride; size_t nelt; int /*<<< orphan*/ * base; int /*<<< orphan*/  (* cb ) (void*) ;} ;
struct ggc_cache_tab {TYPE_1__** base; } ;
struct TYPE_3__ {struct TYPE_3__* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  ggc_htab_delete ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct ggc_cache_tab** gt_ggc_cache_rtab ; 
 struct ggc_root_tab** gt_ggc_deletable_rtab ; 
 struct ggc_root_tab** gt_ggc_rtab ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void
FUNC5 (void)
{
  const struct ggc_root_tab *const *rt;
  const struct ggc_root_tab *rti;
  const struct ggc_cache_tab *const *ct;
  const struct ggc_cache_tab *cti;
  size_t i;

  for (rt = gt_ggc_deletable_rtab; *rt; rt++)
    for (rti = *rt; rti->base != NULL; rti++)
      FUNC3 (rti->base, 0, rti->stride);

  for (rt = gt_ggc_rtab; *rt; rt++)
    for (rti = *rt; rti->base != NULL; rti++)
      for (i = 0; i < rti->nelt; i++)
	(*rti->cb)(*(void **)((char *)rti->base + rti->stride * i));

  FUNC0 ();

  /* Now scan all hash tables that have objects which are to be deleted if
     they are not already marked.  */
  for (ct = gt_ggc_cache_rtab; *ct; ct++)
    for (cti = *ct; cti->base != NULL; cti++)
      if (*cti->base)
	{
	  FUNC1 (*cti->base);
	  FUNC2 (*cti->base, ggc_htab_delete, (void *) cti);
	  FUNC1 ((*cti->base)->entries);
	}
}