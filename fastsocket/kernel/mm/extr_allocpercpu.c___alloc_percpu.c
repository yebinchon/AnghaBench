
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 size_t SMP_CACHE_BYTES ;
 int WARN_ON_ONCE (int) ;
 void* __percpu_disguise (void*) ;
 int __percpu_populate_mask (void*,size_t,int ,int *) ;
 int cache_line_size () ;
 int cpu_possible_map ;
 int kfree (void*) ;
 void* kzalloc (size_t,int ) ;
 scalar_t__ likely (int) ;
 int nr_cpu_ids ;
 size_t roundup (int,int ) ;
 scalar_t__ unlikely (int) ;

void *__alloc_percpu(size_t size, size_t align)
{



 size_t sz = roundup(nr_cpu_ids * sizeof(void *), cache_line_size());
 void *pdata = kzalloc(sz, GFP_KERNEL);
 void *__pdata = __percpu_disguise(pdata);






 WARN_ON_ONCE(align > SMP_CACHE_BYTES);

 if (unlikely(!pdata))
  return ((void*)0);
 if (likely(!__percpu_populate_mask(__pdata, size, GFP_KERNEL,
        &cpu_possible_map)))
  return __pdata;
 kfree(pdata);
 return ((void*)0);
}
