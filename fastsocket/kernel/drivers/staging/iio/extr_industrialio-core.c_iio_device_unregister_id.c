
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int id; } ;


 int iio_free_idr_val (int *,int ) ;
 int iio_idr ;

__attribute__((used)) static void iio_device_unregister_id(struct iio_dev *dev_info)
{
 iio_free_idr_val(&iio_idr, dev_info->id);
}
