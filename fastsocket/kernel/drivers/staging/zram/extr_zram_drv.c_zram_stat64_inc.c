
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zram {int dummy; } ;


 int zram_stat64_add (struct zram*,int *,int) ;

__attribute__((used)) static void zram_stat64_inc(struct zram *zram, u64 *v)
{
 zram_stat64_add(zram, v, 1);
}
