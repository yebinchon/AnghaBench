
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int cache; } ;
struct mem_region {scalar_t__ hi; TYPE_1__ attrib; } ;
struct dcache_block {scalar_t__ addr; char* data; scalar_t__ anydirty; int state; } ;
typedef int DCACHE ;
typedef scalar_t__ CORE_ADDR ;


 int ENTRY_OK ;
 int LINE_SIZE ;
 scalar_t__ MEM_WO ;
 int dcache_write_line (int *,struct dcache_block*) ;
 int do_xfer_memory (scalar_t__,char*,int,int ,TYPE_1__*) ;
 struct mem_region* lookup_mem_region (scalar_t__) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int
dcache_read_line (DCACHE *dcache, struct dcache_block *db)
{
  CORE_ADDR memaddr;
  char *myaddr;
  int len;
  int res;
  int reg_len;
  struct mem_region *region;



  if (db->anydirty)
    {
      if (!dcache_write_line (dcache, db))
 return 0;
    }

  len = LINE_SIZE;
  memaddr = db->addr;
  myaddr = db->data;

  while (len > 0)
    {
      region = lookup_mem_region(memaddr);
      if (memaddr + len < region->hi)
 reg_len = len;
      else
 reg_len = region->hi - memaddr;

      if (!region->attrib.cache || region->attrib.mode == MEM_WO)
 {
   memaddr += reg_len;
   myaddr += reg_len;
   len -= reg_len;
   continue;
 }

      while (reg_len > 0)
 {
   res = do_xfer_memory (memaddr, myaddr, reg_len, 0,
    &region->attrib);
   if (res <= 0)
     return 0;

   memaddr += res;
   myaddr += res;
   len -= res;
   reg_len -= res;
 }
    }

  memset (db->state, ENTRY_OK, sizeof (db->data));
  db->anydirty = 0;

  return 1;
}
