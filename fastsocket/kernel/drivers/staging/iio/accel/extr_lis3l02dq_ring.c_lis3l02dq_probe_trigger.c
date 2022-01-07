
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lis3l02dq_state {TYPE_3__* trig; TYPE_2__* us; } ;
struct iio_dev {int id; struct lis3l02dq_state* dev_data; } ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {scalar_t__ name; int * control_attrs; int * try_reenable; int * set_trigger_state; struct lis3l02dq_state* private_data; int owner; TYPE_1__ dev; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IIO_TRIGGER_NAME_LENGTH ;
 int THIS_MODULE ;
 TYPE_3__* iio_allocate_trigger () ;
 int iio_free_trigger (TYPE_3__*) ;
 int iio_trigger_register (TYPE_3__*) ;
 int kfree (scalar_t__) ;
 scalar_t__ kmalloc (int ,int ) ;
 int lis3l02dq_data_rdy_trigger_set_state ;
 int lis3l02dq_trig_try_reen ;
 int lis3l02dq_trigger_attr_group ;
 int snprintf (char*,int ,char*,int) ;

int lis3l02dq_probe_trigger(struct iio_dev *indio_dev)
{
 int ret;
 struct lis3l02dq_state *state = indio_dev->dev_data;

 state->trig = iio_allocate_trigger();
 state->trig->name = kmalloc(IIO_TRIGGER_NAME_LENGTH, GFP_KERNEL);
 if (!state->trig->name) {
  ret = -ENOMEM;
  goto error_free_trig;
 }
 snprintf((char *)state->trig->name,
   IIO_TRIGGER_NAME_LENGTH,
   "lis3l02dq-dev%d", indio_dev->id);
 state->trig->dev.parent = &state->us->dev;
 state->trig->owner = THIS_MODULE;
 state->trig->private_data = state;
 state->trig->set_trigger_state = &lis3l02dq_data_rdy_trigger_set_state;
 state->trig->try_reenable = &lis3l02dq_trig_try_reen;
 state->trig->control_attrs = &lis3l02dq_trigger_attr_group;
 ret = iio_trigger_register(state->trig);
 if (ret)
  goto error_free_trig_name;

 return 0;

error_free_trig_name:
 kfree(state->trig->name);
error_free_trig:
 iio_free_trigger(state->trig);

 return ret;
}
