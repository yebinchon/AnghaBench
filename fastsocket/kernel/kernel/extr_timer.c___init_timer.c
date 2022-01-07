
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; } ;
struct timer_list {int start_pid; int lockdep_map; int start_comm; int * start_site; int base; TYPE_1__ entry; } ;
struct lock_class_key {int dummy; } ;


 int TASK_COMM_LEN ;
 int __raw_get_cpu_var (int ) ;
 int lockdep_init_map (int *,char const*,struct lock_class_key*,int ) ;
 int memset (int ,int ,int ) ;
 int tvec_bases ;

__attribute__((used)) static void __init_timer(struct timer_list *timer,
    const char *name,
    struct lock_class_key *key)
{
 timer->entry.next = ((void*)0);
 timer->base = __raw_get_cpu_var(tvec_bases);





 lockdep_init_map(&timer->lockdep_map, name, key, 0);
}
