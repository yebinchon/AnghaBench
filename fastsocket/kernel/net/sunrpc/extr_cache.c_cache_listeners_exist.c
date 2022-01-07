
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {scalar_t__ last_close; int readers; } ;


 scalar_t__ atomic_read (int *) ;
 int seconds_since_boot () ;

__attribute__((used)) static bool cache_listeners_exist(struct cache_detail *detail)
{
 if (atomic_read(&detail->readers))
  return 1;
 if (detail->last_close == 0)

  return 0;
 if (detail->last_close < seconds_since_boot() - 30)





   return 0;
 return 1;
}
