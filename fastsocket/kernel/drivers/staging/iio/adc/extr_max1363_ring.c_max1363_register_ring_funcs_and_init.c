
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct max1363_state {int poll_work; TYPE_2__* indio_dev; } ;
struct iio_dev {TYPE_4__* ring; int modes; TYPE_3__* pollfunc; struct max1363_state* dev_data; } ;
struct TYPE_9__ {int * predisable; int * preenable; int * postenable; } ;
struct TYPE_8__ {struct iio_dev* private_data; int * poll_func_main; } ;
struct TYPE_7__ {TYPE_1__* ring; } ;
struct TYPE_6__ {int access; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INDIO_RING_TRIGGERED ;
 int INIT_WORK (int *,int *) ;
 int iio_ring_sw_register_funcs (int *) ;
 TYPE_4__* iio_sw_rb_allocate (struct iio_dev*) ;
 int iio_sw_rb_free (TYPE_4__*) ;
 TYPE_3__* kzalloc (int,int ) ;
 int max1363_poll_bh_to_ring ;
 int max1363_poll_func_th ;
 int max1363_ring_postenable ;
 int max1363_ring_predisable ;
 int max1363_ring_preenable ;

int max1363_register_ring_funcs_and_init(struct iio_dev *indio_dev)
{
 struct max1363_state *st = indio_dev->dev_data;
 int ret = 0;

 indio_dev->ring = iio_sw_rb_allocate(indio_dev);
 if (!indio_dev->ring) {
  ret = -ENOMEM;
  goto error_ret;
 }

 iio_ring_sw_register_funcs(&st->indio_dev->ring->access);
 indio_dev->pollfunc = kzalloc(sizeof(*indio_dev->pollfunc), GFP_KERNEL);
 if (indio_dev->pollfunc == ((void*)0)) {
  ret = -ENOMEM;
  goto error_deallocate_sw_rb;
 }

 indio_dev->pollfunc->poll_func_main = &max1363_poll_func_th;
 indio_dev->pollfunc->private_data = indio_dev;


 indio_dev->ring->postenable = &max1363_ring_postenable;
 indio_dev->ring->preenable = &max1363_ring_preenable;
 indio_dev->ring->predisable = &max1363_ring_predisable;
 INIT_WORK(&st->poll_work, &max1363_poll_bh_to_ring);


 indio_dev->modes |= INDIO_RING_TRIGGERED;
 return 0;
error_deallocate_sw_rb:
 iio_sw_rb_free(indio_dev->ring);
error_ret:
 return ret;
}
