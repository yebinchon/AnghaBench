
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_info {int name; } ;


 int strcmp (int ,char*) ;
 int unload_mpu401 (struct address_info*) ;
 int unload_uart401 (struct address_info*) ;

void unload_sbmpu(struct address_info *hw_config)
{






 unload_uart401(hw_config);
}
