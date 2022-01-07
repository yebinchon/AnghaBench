
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcache_block {scalar_t__* state; char* data; } ;
typedef int DCACHE ;
typedef int CORE_ADDR ;


 scalar_t__ ENTRY_BAD ;
 size_t XFORM (int ) ;
 struct dcache_block* dcache_alloc (int *,int ) ;
 struct dcache_block* dcache_hit (int *,int ) ;
 int dcache_read_line (int *,struct dcache_block*) ;

__attribute__((used)) static int
dcache_peek_byte (DCACHE *dcache, CORE_ADDR addr, char *ptr)
{
  struct dcache_block *db = dcache_hit (dcache, addr);

  if (!db)
    {
      db = dcache_alloc (dcache, addr);
      if (!db)
 return 0;
    }

  if (db->state[XFORM (addr)] == ENTRY_BAD)
    {
      if (!dcache_read_line(dcache, db))
         return 0;
    }

  *ptr = db->data[XFORM (addr)];
  return 1;
}
