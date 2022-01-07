
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcspkr_do_sound (int ) ;

void pcspkr_stop_sound(void)
{
 pcspkr_do_sound(0);
}
