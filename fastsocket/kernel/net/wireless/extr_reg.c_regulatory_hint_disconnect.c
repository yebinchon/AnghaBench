
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_DBG_PRINT (char*) ;
 int restore_regulatory_settings (int) ;

void regulatory_hint_disconnect(void)
{
 REG_DBG_PRINT("All devices are disconnected, going to restore regulatory settings\n");
 restore_regulatory_settings(0);
}
