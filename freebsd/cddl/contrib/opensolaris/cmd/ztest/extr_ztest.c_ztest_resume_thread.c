
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int poll (int *,int ,int) ;
 scalar_t__ spa_suspended (int *) ;
 scalar_t__ zfs_abd_scatter_enabled ;
 scalar_t__ zfs_compressed_arc_enabled ;
 int ztest_exiting ;
 scalar_t__ ztest_random (int) ;
 int ztest_resume (int *) ;

__attribute__((used)) static void *
ztest_resume_thread(void *arg)
{
 spa_t *spa = arg;

 while (!ztest_exiting) {
  if (spa_suspended(spa))
   ztest_resume(spa);
  (void) poll(((void*)0), 0, 100);




  if (ztest_random(10) == 0)
   zfs_compressed_arc_enabled = ztest_random(2);




  if (ztest_random(10) == 0)
   zfs_abd_scatter_enabled = ztest_random(2);
 }
 return (((void*)0));
}
