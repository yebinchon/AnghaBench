
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ams_delta_panel_driver ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int ams_delta_panel_drv_init(void)
{
 return platform_driver_register(&ams_delta_panel_driver);
}
