
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_counter {int lock; scalar_t__ count; int counters; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;


 int get_cpu () ;
 scalar_t__* per_cpu_ptr (int ,int) ;
 int put_cpu () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __percpu_counter_add(struct percpu_counter *fbc, s64 amount, s32 batch)
{
 s64 count;
 s32 *pcount;
 int cpu = get_cpu();

 pcount = per_cpu_ptr(fbc->counters, cpu);
 count = *pcount + amount;
 if (count >= batch || count <= -batch) {
  spin_lock(&fbc->lock);
  fbc->count += count;
  *pcount = 0;
  spin_unlock(&fbc->lock);
 } else {
  *pcount = count;
 }
 put_cpu();
}
