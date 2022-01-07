
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_TSR ;
 int TSR_ENW ;
 int TSR_WIS ;
 int mtspr (int ,int) ;

__attribute__((used)) static void __booke_wdt_ping(void *data)
{
 mtspr(SPRN_TSR, TSR_ENW|TSR_WIS);
}
