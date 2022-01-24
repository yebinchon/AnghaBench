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
struct dcache_block {char* data; int anydirty; int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  DCACHE ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DIRTY ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct dcache_block* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dcache_block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (DCACHE *dcache, CORE_ADDR addr, char *ptr)
{
  struct dcache_block *db = FUNC2 (dcache, addr);

  if (!db)
    {
      db = FUNC1 (dcache, addr);
      if (!db)
	return 0;
    }

  db->data[FUNC0 (addr)] = *ptr;
  db->state[FUNC0 (addr)] = ENTRY_DIRTY;
  db->anydirty = 1;
  return 1;
}