
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct zram {int stat64_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void zram_stat64_add(struct zram *zram, u64 *v, u64 inc)
{
 spin_lock(&zram->stat64_lock);
 *v = *v + inc;
 spin_unlock(&zram->stat64_lock);
}
