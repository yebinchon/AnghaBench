
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int currentmode; } ;


 int INDIO_RING_HARDWARE_BUFFER ;
 int INDIO_RING_TRIGGERED ;

__attribute__((used)) static inline bool iio_ring_enabled(struct iio_dev *dev_info)
{
 return dev_info->currentmode
  & (INDIO_RING_TRIGGERED
     | INDIO_RING_HARDWARE_BUFFER);
}
