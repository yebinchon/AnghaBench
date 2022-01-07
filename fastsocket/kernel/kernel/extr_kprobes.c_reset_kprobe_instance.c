
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * __get_cpu_var ;



__attribute__((used)) static inline void reset_kprobe_instance(void)
{
 __get_cpu_var(kprobe_instance) = ((void*)0);
}
