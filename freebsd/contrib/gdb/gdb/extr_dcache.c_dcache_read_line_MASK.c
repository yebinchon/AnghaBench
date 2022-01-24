#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ mode; int /*<<< orphan*/  cache; } ;
struct mem_region {scalar_t__ hi; TYPE_1__ attrib; } ;
struct dcache_block {scalar_t__ addr; char* data; scalar_t__ anydirty; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  DCACHE ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_OK ; 
 int LINE_SIZE ; 
 scalar_t__ MEM_WO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dcache_block*) ; 
 int FUNC1 (scalar_t__,char*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct mem_region* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4 (DCACHE *dcache, struct dcache_block *db)
{
  CORE_ADDR memaddr;
  char *myaddr;
  int len;
  int res;
  int reg_len;
  struct mem_region *region;

  /* If there are any dirty bytes in the line, it must be written
     before a new line can be read */
  if (db->anydirty)
    {
      if (!FUNC0 (dcache, db))
	return 0;
    }
  
  len = LINE_SIZE;
  memaddr = db->addr;
  myaddr  = db->data;

  while (len > 0)
    {
      region = FUNC2(memaddr);
      if (memaddr + len < region->hi)
	reg_len = len;
      else
	reg_len = region->hi - memaddr;

      if (!region->attrib.cache || region->attrib.mode == MEM_WO)
	{
	  memaddr += reg_len;
	  myaddr  += reg_len;
	  len     -= reg_len;
	  continue;
	}
      
      while (reg_len > 0)
	{
	  res = FUNC1 (memaddr, myaddr, reg_len, 0,
				&region->attrib);
	  if (res <= 0)
	    return 0;

	  memaddr += res;
	  myaddr  += res;
	  len     -= res;
	  reg_len -= res;
	}
    }

  FUNC3 (db->state, ENTRY_OK, sizeof (db->data));
  db->anydirty = 0;
  
  return 1;
}