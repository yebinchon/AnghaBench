
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGES_PER_WAITQUEUE ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static inline unsigned long wait_table_hash_nr_entries(unsigned long pages)
{
 unsigned long size = 1;

 pages /= PAGES_PER_WAITQUEUE;

 while (size < pages)
  size <<= 1;






 size = min(size, 4096UL);

 return max(size, 4UL);
}
