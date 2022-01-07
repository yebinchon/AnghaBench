
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * class; int * parent; int * type; } ;
struct iio_ring_buffer {TYPE_1__ dev; } ;
struct iio_sw_ring_buffer {struct iio_ring_buffer buf; } ;
struct iio_dev {int dev; } ;


 int GFP_KERNEL ;
 int dev_set_drvdata (TYPE_1__*,void*) ;
 int device_initialize (TYPE_1__*) ;
 int iio_class ;
 int iio_ring_buffer_init (struct iio_ring_buffer*,struct iio_dev*) ;
 int iio_sw_ring_type ;
 struct iio_sw_ring_buffer* kzalloc (int,int ) ;

struct iio_ring_buffer *iio_sw_rb_allocate(struct iio_dev *indio_dev)
{
 struct iio_ring_buffer *buf;
 struct iio_sw_ring_buffer *ring;

 ring = kzalloc(sizeof *ring, GFP_KERNEL);
 if (!ring)
  return 0;
 buf = &ring->buf;

 iio_ring_buffer_init(buf, indio_dev);
 buf->dev.type = &iio_sw_ring_type;
 device_initialize(&buf->dev);
 buf->dev.parent = &indio_dev->dev;
 buf->dev.class = &iio_class;
 dev_set_drvdata(&buf->dev, (void *)buf);

 return buf;
}
