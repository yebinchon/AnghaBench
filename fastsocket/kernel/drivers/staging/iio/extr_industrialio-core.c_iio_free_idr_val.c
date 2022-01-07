
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 int idr_remove (struct idr*,int) ;
 int iio_idr_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iio_free_idr_val(struct idr *this_idr, int id)
{
 spin_lock(&iio_idr_lock);
 idr_remove(this_idr, id);
 spin_unlock(&iio_idr_lock);
}
