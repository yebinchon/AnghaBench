
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lis3l02dq_state {TYPE_1__* trig; } ;
struct iio_dev {struct lis3l02dq_state* dev_data; } ;
struct TYPE_3__ {int name; } ;


 int iio_free_trigger (TYPE_1__*) ;
 int iio_trigger_unregister (TYPE_1__*) ;
 int kfree (int ) ;

void lis3l02dq_remove_trigger(struct iio_dev *indio_dev)
{
 struct lis3l02dq_state *state = indio_dev->dev_data;

 iio_trigger_unregister(state->trig);
 kfree(state->trig->name);
 iio_free_trigger(state->trig);
}
