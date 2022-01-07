
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int GFP_KERNEL ;
 scalar_t__ PIDLIST_TOO_LARGE (int) ;
 void* kmalloc (int,int ) ;
 void* vmalloc (int) ;

__attribute__((used)) static void *pidlist_allocate(int count)
{
 if (PIDLIST_TOO_LARGE(count))
  return vmalloc(count * sizeof(pid_t));
 else
  return kmalloc(count * sizeof(pid_t), GFP_KERNEL);
}
