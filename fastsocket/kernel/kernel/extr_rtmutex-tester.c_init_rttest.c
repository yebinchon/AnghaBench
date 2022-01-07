
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysdev; } ;


 int MAX_RT_TEST_MUTEXES ;
 int MAX_RT_TEST_THREADS ;
 int attr_command ;
 int attr_status ;
 int init_test_thread (int) ;
 int * mutexes ;
 int printk (char*,char*) ;
 int rt_mutex_init (int *) ;
 int rttest_lock ;
 int rttest_sysclass ;
 int spin_lock_init (int *) ;
 int sysdev_class_register (int *) ;
 int sysdev_create_file (int *,int *) ;
 TYPE_1__* thread_data ;

__attribute__((used)) static int init_rttest(void)
{
 int ret, i;

 spin_lock_init(&rttest_lock);

 for (i = 0; i < MAX_RT_TEST_MUTEXES; i++)
  rt_mutex_init(&mutexes[i]);

 ret = sysdev_class_register(&rttest_sysclass);
 if (ret)
  return ret;

 for (i = 0; i < MAX_RT_TEST_THREADS; i++) {
  ret = init_test_thread(i);
  if (ret)
   break;
  ret = sysdev_create_file(&thread_data[i].sysdev, &attr_status);
  if (ret)
   break;
  ret = sysdev_create_file(&thread_data[i].sysdev, &attr_command);
  if (ret)
   break;
 }

 printk("Initializing RT-Tester: %s\n", ret ? "Failed" : "OK" );

 return ret;
}
