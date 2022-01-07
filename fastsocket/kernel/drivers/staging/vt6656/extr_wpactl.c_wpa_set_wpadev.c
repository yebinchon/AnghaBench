
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSDevice ;


 int wpa_init_wpadev (int ) ;
 int wpa_release_wpadev (int ) ;

int wpa_set_wpadev(PSDevice pDevice, int val)
{
 if (val)
  return wpa_init_wpadev(pDevice);
 else
  return wpa_release_wpadev(pDevice);
}
