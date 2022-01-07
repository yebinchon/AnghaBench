
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int max_prop_frac; int completions; } ;


 int __prop_inc_percpu_max (int *,int *,int ) ;
 int vm_completions ;

__attribute__((used)) static inline void __bdi_writeout_inc(struct backing_dev_info *bdi)
{
 __prop_inc_percpu_max(&vm_completions, &bdi->completions,
         bdi->max_prop_frac);
}
