
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_state {long dynticks_completed; } ;



__attribute__((used)) static void dyntick_record_completed(struct rcu_state *rsp, long comp)
{
 rsp->dynticks_completed = comp;
}
