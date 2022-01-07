
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {scalar_t__ pre_handler; } ;


 scalar_t__ aggr_pre_handler ;

__attribute__((used)) static inline int kprobe_aggrprobe(struct kprobe *p)
{
 return p->pre_handler == aggr_pre_handler;
}
