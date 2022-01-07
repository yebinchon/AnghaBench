
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONFIG_LSM_MMAP_MIN_ADDR ;
 scalar_t__ dac_mmap_min_addr ;
 scalar_t__ mmap_min_addr ;

__attribute__((used)) static void update_mmap_min_addr(void)
{






 mmap_min_addr = dac_mmap_min_addr;

}
