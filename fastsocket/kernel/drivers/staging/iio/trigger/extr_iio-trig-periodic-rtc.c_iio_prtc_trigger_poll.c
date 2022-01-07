
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iio_trigger_poll (void*) ;

__attribute__((used)) static void iio_prtc_trigger_poll(void *private_data)
{
 iio_trigger_poll(private_data);
}
