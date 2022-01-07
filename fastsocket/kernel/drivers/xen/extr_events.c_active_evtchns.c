
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {unsigned long* evtchn_pending; unsigned long* evtchn_mask; } ;


 unsigned long* cpu_evtchn_mask (unsigned int) ;

__attribute__((used)) static inline unsigned long active_evtchns(unsigned int cpu,
        struct shared_info *sh,
        unsigned int idx)
{
 return (sh->evtchn_pending[idx] &
  cpu_evtchn_mask(cpu)[idx] &
  ~sh->evtchn_mask[idx]);
}
