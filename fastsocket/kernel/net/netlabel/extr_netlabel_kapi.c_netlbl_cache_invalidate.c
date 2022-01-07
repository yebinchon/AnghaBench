
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cipso_v4_cache_invalidate () ;

void netlbl_cache_invalidate(void)
{
 cipso_v4_cache_invalidate();
}
