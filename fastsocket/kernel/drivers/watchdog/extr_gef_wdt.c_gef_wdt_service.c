
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEF_WDC_ENABLED_TRUE ;
 int GEF_WDC_SERVICE_SHIFT ;
 int gef_wdt_toggle_wdc (int ,int ) ;

__attribute__((used)) static void gef_wdt_service(void)
{
 gef_wdt_toggle_wdc(GEF_WDC_ENABLED_TRUE,
  GEF_WDC_SERVICE_SHIFT);
}
