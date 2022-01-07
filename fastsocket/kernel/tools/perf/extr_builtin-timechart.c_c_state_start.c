
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int * cpus_cstate_start_times ;
 int* cpus_cstate_state ;

__attribute__((used)) static void c_state_start(int cpu, u64 timestamp, int state)
{
 cpus_cstate_start_times[cpu] = timestamp;
 cpus_cstate_state[cpu] = state;
}
