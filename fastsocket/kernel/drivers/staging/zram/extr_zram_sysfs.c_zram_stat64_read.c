
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zram {int stat64_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u64 zram_stat64_read(struct zram *zram, u64 *v)
{
 u64 val;

 spin_lock(&zram->stat64_lock);
 val = *v;
 spin_unlock(&zram->stat64_lock);

 return val;
}
