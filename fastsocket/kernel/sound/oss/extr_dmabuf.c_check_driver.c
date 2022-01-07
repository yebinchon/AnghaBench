
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_driver {int * set_channels; int * set_bits; int * set_speed; } ;


 int * default_set_bits ;
 int * default_set_channels ;
 int * default_set_speed ;

__attribute__((used)) static void check_driver(struct audio_driver *d)
{
 if (d->set_speed == ((void*)0))
  d->set_speed = default_set_speed;
 if (d->set_bits == ((void*)0))
  d->set_bits = default_set_bits;
 if (d->set_channels == ((void*)0))
  d->set_channels = default_set_channels;
}
