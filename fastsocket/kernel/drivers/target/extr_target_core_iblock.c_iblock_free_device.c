
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct iblock_dev {int * ibd_bio_set; int * ibd_bd; } ;


 int FMODE_EXCL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 int bioset_free (int *) ;
 int close_bdev_exclusive (int *,int) ;
 int kfree (struct iblock_dev*) ;

__attribute__((used)) static void iblock_free_device(struct se_device *dev)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);

 if (ib_dev->ibd_bd != ((void*)0))
  close_bdev_exclusive(ib_dev->ibd_bd, FMODE_WRITE|FMODE_READ|FMODE_EXCL);
 if (ib_dev->ibd_bio_set != ((void*)0))
  bioset_free(ib_dev->ibd_bio_set);
 kfree(ib_dev);
}
