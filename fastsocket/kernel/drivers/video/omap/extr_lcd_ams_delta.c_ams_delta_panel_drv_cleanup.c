
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ams_delta_panel_driver ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void ams_delta_panel_drv_cleanup(void)
{
 platform_driver_unregister(&ams_delta_panel_driver);
}
