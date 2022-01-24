#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dcache_block {int dummy; } ;
struct TYPE_5__ {struct dcache_block* the_cache; } ;
typedef  TYPE_1__ DCACHE ;

/* Variables and functions */
 int DCACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* last_cache ; 
 int /*<<< orphan*/  FUNC1 (struct dcache_block*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

DCACHE *
FUNC3 (void)
{
  int csize = sizeof (struct dcache_block) * DCACHE_SIZE;
  DCACHE *dcache;

  dcache = (DCACHE *) FUNC2 (sizeof (*dcache));

  dcache->the_cache = (struct dcache_block *) FUNC2 (csize);
  FUNC1 (dcache->the_cache, 0, csize);

  FUNC0 (dcache);

  last_cache = dcache;
  return dcache;
}