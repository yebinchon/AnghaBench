
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dcache_block {scalar_t__ addr; struct dcache_block* p; int refs; } ;
struct TYPE_3__ {struct dcache_block* valid_head; } ;
typedef TYPE_1__ DCACHE ;
typedef int CORE_ADDR ;


 scalar_t__ MASK (int ) ;

__attribute__((used)) static struct dcache_block *
dcache_hit (DCACHE *dcache, CORE_ADDR addr)
{
  struct dcache_block *db;


  db = dcache->valid_head;

  while (db)
    {
      if (MASK (addr) == db->addr)
 {
   db->refs++;
   return db;
 }
      db = db->p;
    }

  return ((void*)0);
}
