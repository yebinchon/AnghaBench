
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsoft_priv {int sHwData; } ;


 int Mds_Destroy (struct wbsoft_priv*) ;
 int hal_halt (int *) ;
 int hal_stop (int *) ;
 int msleep (int) ;
 int printk (char*) ;

__attribute__((used)) static void wb35_hw_halt(struct wbsoft_priv *adapter)
{
 Mds_Destroy(adapter);


 hal_stop(&adapter->sHwData);




 msleep(100);

 hal_halt(&adapter->sHwData);
}
