
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ext4_lazyinit_task ;
 int ext4_li_info ;
 int kthread_stop (int ) ;

__attribute__((used)) static void ext4_destroy_lazyinit_thread(void)
{




 if (!ext4_li_info || !ext4_lazyinit_task)
  return;

 kthread_stop(ext4_lazyinit_task);
}
