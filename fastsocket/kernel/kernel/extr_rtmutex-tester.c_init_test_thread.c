
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; int * cls; } ;
struct TYPE_4__ {TYPE_2__ sysdev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,TYPE_1__*,char*,int) ;
 int rttest_sysclass ;
 int sysdev_register (TYPE_2__*) ;
 int test_func ;
 TYPE_1__* thread_data ;
 int * threads ;

__attribute__((used)) static int init_test_thread(int id)
{
 thread_data[id].sysdev.cls = &rttest_sysclass;
 thread_data[id].sysdev.id = id;

 threads[id] = kthread_run(test_func, &thread_data[id], "rt-test-%d", id);
 if (IS_ERR(threads[id]))
  return PTR_ERR(threads[id]);

 return sysdev_register(&thread_data[id].sysdev);
}
