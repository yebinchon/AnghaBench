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
struct dcache_block {scalar_t__* state; char* data; } ;
typedef  int /*<<< orphan*/  DCACHE ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ ENTRY_BAD ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct dcache_block* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dcache_block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dcache_block*) ; 

__attribute__((used)) static int
FUNC4 (DCACHE *dcache, CORE_ADDR addr, char *ptr)
{
  struct dcache_block *db = FUNC2 (dcache, addr);

  if (!db)
    {
      db = FUNC1 (dcache, addr);
      if (!db)
	return 0;
    }
  
  if (db->state[FUNC0 (addr)] == ENTRY_BAD)
    {
      if (!FUNC3(dcache, db))
         return 0;
    }

  *ptr = db->data[FUNC0 (addr)];
  return 1;
}