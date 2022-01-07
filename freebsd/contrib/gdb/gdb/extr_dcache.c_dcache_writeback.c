
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dcache_block {struct dcache_block* p; } ;
struct TYPE_4__ {struct dcache_block* valid_head; } ;
typedef TYPE_1__ DCACHE ;


 int dcache_write_line (TYPE_1__*,struct dcache_block*) ;

__attribute__((used)) static int
dcache_writeback (DCACHE *dcache)
{
  struct dcache_block *db;

  db = dcache->valid_head;

  while (db)
    {
      if (!dcache_write_line (dcache, db))
 return 0;
      db = db->p;
    }
  return 1;
}
