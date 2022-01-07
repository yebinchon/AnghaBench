
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int timeout ;
 int wb_smsc_wdt_set_timeout (int ) ;

__attribute__((used)) static void wb_smsc_wdt_enable(void)
{

 wb_smsc_wdt_set_timeout(timeout);
}
