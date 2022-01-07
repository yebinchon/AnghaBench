
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_info_iterator {scalar_t__ offset; int * pages; int * addr; } ;


 int KM_USER0 ;
 scalar_t__ PAGE_SIZE ;
 int * kmap_atomic (int ,int ) ;
 int kunmap_atomic (int *,int ) ;
 int memcpy (int *,void*,unsigned long) ;
 unsigned long min (unsigned long,scalar_t__) ;
 int rdsdebug (char*,int ,int *,scalar_t__,unsigned long,void*,unsigned long) ;

void rds_info_copy(struct rds_info_iterator *iter, void *data,
     unsigned long bytes)
{
 unsigned long this;

 while (bytes) {
  if (!iter->addr)
   iter->addr = kmap_atomic(*iter->pages, KM_USER0);

  this = min(bytes, PAGE_SIZE - iter->offset);

  rdsdebug("page %p addr %p offset %lu this %lu data %p "
     "bytes %lu\n", *iter->pages, iter->addr,
     iter->offset, this, data, bytes);

  memcpy(iter->addr + iter->offset, data, this);

  data += this;
  bytes -= this;
  iter->offset += this;

  if (iter->offset == PAGE_SIZE) {
   kunmap_atomic(iter->addr, KM_USER0);
   iter->addr = ((void*)0);
   iter->offset = 0;
   iter->pages++;
  }
 }
}
