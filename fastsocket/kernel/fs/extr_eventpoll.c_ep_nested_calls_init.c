
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nested_calls {int lock; int tasks_call_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ep_nested_calls_init(struct nested_calls *ncalls)
{
 INIT_LIST_HEAD(&ncalls->tasks_call_list);
 spin_lock_init(&ncalls->lock);
}
