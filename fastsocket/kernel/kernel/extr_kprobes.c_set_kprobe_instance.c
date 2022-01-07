
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int dummy; } ;
typedef struct kprobe* __get_cpu_var ;



__attribute__((used)) static inline void set_kprobe_instance(struct kprobe *kp)
{
 __get_cpu_var(kprobe_instance) = kp;
}
