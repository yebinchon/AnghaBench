
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_cpus_entries {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 struct callchain_cpus_entries* callchain_cpus_entries ;
 int rcu_assign_pointer (struct callchain_cpus_entries*,int *) ;
 int release_callchain_buffers_rcu ;

__attribute__((used)) static void release_callchain_buffers(void)
{
 struct callchain_cpus_entries *entries;

 entries = callchain_cpus_entries;
 rcu_assign_pointer(callchain_cpus_entries, ((void*)0));
 call_rcu(&entries->rcu_head, release_callchain_buffers_rcu);
}
