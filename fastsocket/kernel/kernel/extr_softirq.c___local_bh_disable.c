
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_preempt_count (unsigned int) ;
 int barrier () ;

__attribute__((used)) static inline void __local_bh_disable(unsigned long ip, unsigned int cnt)
{
 add_preempt_count(cnt);
 barrier();
}
