
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {struct uea_softc* driver_data; } ;
struct uea_softc {int dummy; } ;
struct atm_dev {int esi; } ;


 int uea_getesi (struct uea_softc*,int ) ;

__attribute__((used)) static int uea_atm_open(struct usbatm_data *usbatm, struct atm_dev *atm_dev)
{
 struct uea_softc *sc = usbatm->driver_data;

 return uea_getesi(sc, atm_dev->esi);
}
