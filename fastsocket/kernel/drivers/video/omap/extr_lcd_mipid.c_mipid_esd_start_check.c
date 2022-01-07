
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int esd_work; int esd_wq; int * esd_check; } ;


 int MIPID_ESD_CHECK_PERIOD ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void mipid_esd_start_check(struct mipid_device *md)
{
 if (md->esd_check != ((void*)0))
  queue_delayed_work(md->esd_wq, &md->esd_work,
       MIPID_ESD_CHECK_PERIOD);
}
