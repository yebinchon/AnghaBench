
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcache_block {char* data; int anydirty; int * state; } ;
typedef int DCACHE ;
typedef int CORE_ADDR ;


 int ENTRY_DIRTY ;
 size_t XFORM (int ) ;
 struct dcache_block* dcache_alloc (int *,int ) ;
 struct dcache_block* dcache_hit (int *,int ) ;

__attribute__((used)) static int
dcache_poke_byte (DCACHE *dcache, CORE_ADDR addr, char *ptr)
{
  struct dcache_block *db = dcache_hit (dcache, addr);

  if (!db)
    {
      db = dcache_alloc (dcache, addr);
      if (!db)
 return 0;
    }

  db->data[XFORM (addr)] = *ptr;
  db->state[XFORM (addr)] = ENTRY_DIRTY;
  db->anydirty = 1;
  return 1;
}
