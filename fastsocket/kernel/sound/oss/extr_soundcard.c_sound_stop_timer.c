
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int seq_timer ;

void sound_stop_timer(void)
{
 del_timer(&seq_timer);
}
