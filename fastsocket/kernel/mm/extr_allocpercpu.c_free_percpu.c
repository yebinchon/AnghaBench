
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __percpu_depopulate_mask (void*,int ) ;
 int __percpu_disguise (void*) ;
 int cpu_possible_mask ;
 int kfree (int ) ;
 scalar_t__ unlikely (int) ;

void free_percpu(void *__pdata)
{
 if (unlikely(!__pdata))
  return;
 __percpu_depopulate_mask(__pdata, cpu_possible_mask);
 kfree(__percpu_disguise(__pdata));
}
