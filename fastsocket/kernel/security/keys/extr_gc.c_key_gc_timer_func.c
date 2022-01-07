
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_GC_KEY_EXPIRED ;
 int LONG_MAX ;
 int kenter (char*) ;
 int key_gc_flags ;
 int key_gc_next_run ;
 int key_schedule_gc_work () ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void key_gc_timer_func(unsigned long data)
{
 kenter("");
 key_gc_next_run = LONG_MAX;
 set_bit(KEY_GC_KEY_EXPIRED, &key_gc_flags);
 key_schedule_gc_work();
}
