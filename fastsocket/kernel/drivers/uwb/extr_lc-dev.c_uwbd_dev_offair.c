
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int rc; } ;
struct uwb_beca_e {struct uwb_dev* uwb_dev; } ;


 int UWB_NOTIF_OFFAIR ;
 int __uwb_dev_offair (struct uwb_dev*,int ) ;
 int uwb_notify (int ,struct uwb_dev*,int ) ;

void uwbd_dev_offair(struct uwb_beca_e *bce)
{
 struct uwb_dev *uwb_dev;

 uwb_dev = bce->uwb_dev;
 if (uwb_dev) {
  uwb_notify(uwb_dev->rc, uwb_dev, UWB_NOTIF_OFFAIR);
  __uwb_dev_offair(uwb_dev, uwb_dev->rc);
 }
}
