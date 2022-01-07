
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ratelimit_pages ;

__attribute__((used)) static inline long sync_writeback_pages(unsigned long dirtied)
{
 if (dirtied < ratelimit_pages)
  dirtied = ratelimit_pages;

 return dirtied + dirtied / 2;
}
