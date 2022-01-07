
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_gc_work ;
 int key_need_gc ;
 int schedule_work (int *) ;
 int smp_wmb () ;

__attribute__((used)) static inline void key_schedule_gc_work(void)
{
 smp_wmb();
 key_need_gc = 1;
 schedule_work(&key_gc_work);
}
